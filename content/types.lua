return function(mod)
    local chart = mod.content.type_chart

    ------------------------------------------------------------
    -- Compatibility helpers
    ------------------------------------------------------------

    local function ensureType(id, definition)
        local existing = chart:get(id)

        if existing ~= nil then
            -- Another mod already supplied this type.
            -- Accept it if the important semantics agree.
            if existing.category ~= definition.category then
                error(
                    ("KEP Port: incompatible existing type %s "
                    .. "(expected category %s, got %s)")
                    :format(
                        id,
                        tostring(definition.category),
                        tostring(existing.category)
                    ),
                    0
                )
            end

            return
        end

        chart:register(id, definition)
    end

    local function ensureMatchup(attacker, defender, multiplier)
        local id = attacker .. ">" .. defender
        local existing = chart:get(id)

        if existing ~= nil then
            -- Same matchup already provided by another mod: great.
            if existing.multiplier ~= multiplier then
                error(
                    ("KEP Port: incompatible type matchup %s "
                    .. "(expected %d, got %s)")
                    :format(
                        id,
                        multiplier,
                        tostring(existing.multiplier)
                    ),
                    0
                )
            end

            return
        end

        chart:register(id, {
            multiplier = multiplier,
        })
    end


    ------------------------------------------------------------
    -- NEW TYPES
    ------------------------------------------------------------

    ensureType("DARK", {
        name = "DARK",
        category = "special",
    })

    ensureType("STEEL", {
        name = "STEEL",
        category = "physical",
    })

    ensureType("FAIRY", {
        name = "FAIRY",
        category = "special",
    })

    -- dark outgoing dmg
    ensureMatchup("DARK", "PSYCHIC_TYPE", 20)
    ensureMatchup("DARK", "GHOST",        20)
    ensureMatchup("DARK", "DARK",         20)
    ensureMatchup("DARK", "NORMAL",        5)
    ensureMatchup("DARK", "FAIRY",         5)

    -- dark incoming dmg
    ensureMatchup("NORMAL",       "DARK", 20)
    ensureMatchup("BUG",          "DARK", 20)
    ensureMatchup("PSYCHIC_TYPE", "DARK",  5)
    ensureMatchup("GHOST",        "DARK",  5)
    ensureMatchup("FAIRY",        "DARK", 20)

    -- steel outgoing dmg
    ensureMatchup("STEEL", "ROCK",     20)
    ensureMatchup("STEEL", "WATER",     5)
    ensureMatchup("STEEL", "ELECTRIC",  5)
    ensureMatchup("STEEL", "STEEL",     0)
    ensureMatchup("STEEL", "FAIRY",    20)

    -- steel incoming dmg
    ensureMatchup("WATER",    "STEEL", 20)
    ensureMatchup("ELECTRIC", "STEEL", 20)
    ensureMatchup("POISON",   "STEEL",  5)
    ensureMatchup("FIGHTING", "STEEL",  5)
    ensureMatchup("ROCK",     "STEEL",  5)
    ensureMatchup("FAIRY",    "STEEL",  5)

    -- fairy outgoing dmg
    ensureMatchup("FAIRY", "DRAGON",   20)
    ensureMatchup("FAIRY", "DARK",     20)
    ensureMatchup("FAIRY", "FIGHTING", 20)
    ensureMatchup("FAIRY", "BUG",      20)
    ensureMatchup("FAIRY", "FIRE",      5)
    ensureMatchup("FAIRY", "ICE",       5)
    ensureMatchup("FAIRY", "STEEL",     5)

    -- fairy incoming dmg
    ensureMatchup("BUG",      "FAIRY",  5)
    ensureMatchup("DARK",     "FAIRY",  5)
    ensureMatchup("FIGHTING", "FAIRY",  5)
    ensureMatchup("FIRE",     "FAIRY", 20)
    ensureMatchup("ICE",      "FAIRY", 20)
    ensureMatchup("STEEL",    "FAIRY", 20)
    ensureMatchup("DRAGON",   "FAIRY",  0)
end