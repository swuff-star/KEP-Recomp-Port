return function(mod)
    local items = mod.content.items

    -- please dont make this code run ever ideally

    local function ensureItem(id, definition)
        local existing = items:get(id)

        if existing ~= nil then
            -- if another mod adds a copy of our item we try to respect theirs
            if definition.keyItem == true
                and existing.keyItem ~= true then

                error(
                    ("KEP Port: incompatible existing item %s "
                    .. "(KEP requires it to be a key item)")
                    :format(id),
                    0
                )
            end

            return
        end

        definition.id = id
        items:register(id, definition)
    end

    local function ensureEffect(id, definition)
    local existing = mod.content.item_effects:get(id)

    if existing ~= nil then
        return
    end

    mod.content.item_effects:register(id, definition)
end


ensureEffect("EVOLUTION_ITEM", {
    needsTarget = true,
    field = true,
    battle = false,

    use = function(ctx)
        if not ctx.target then
            return "failed", {
                "It won't have\nany effect."
            }
        end

        local speciesDef = ctx.data.pokemon[ctx.target.species]

        if not speciesDef then
            return "failed", {
                "It won't have\nany effect."
            }
        end

        for _, evo in ipairs(speciesDef.evolutions or {}) do
            if evo.method == "ITEM"
                and evo.item == ctx.itemId then

                return "consumed", nil, {
                    evolveTo = evo.species,
                }
            end
        end

        return "failed", {
            "It won't have\nany effect."
        }
    end,
    })


    local function evolutionItem(id, name, price)
        ensureItem(id, {
            name = name,
            price = price,
            tossable = true,

            effect = "EVOLUTION_ITEM",
            needsTarget = true,
        })
    end


    local function normalItem(id, name, price)
        ensureItem(id, {
            name = name,
            price = price,
            tossable = true,
        })
    end


    local function keyItem(id, name)
        ensureItem(id, {
            name = name,
            price = 0,
            tossable = false,
            keyItem = true,
        })
    end

    -- turn xp all into key item
    items:patch("EXP_ALL", {
        price = 0,
        tossable = false,
        keyItem = true,
    })

    -- evo stones

    evolutionItem(
        "HEART_STONE",
        "HEART STONE",
        2100
    )

    evolutionItem(
        "ICE_STONE",
        "ICE STONE",
        2100
    )

    evolutionItem(
        "PROTECTOR",
        "PROTECTOR",
        3000
    )

    evolutionItem(
        "POISON_STONE",
        "POISON STONE",
        2100
    )

    evolutionItem(
        "BLK_AUGURITE",
        "BLK AUGURITE",
        2100
    )

    evolutionItem(
        "DUBIOUS_DISC",
        "DUBIOUS DISC",
        3000
    )

    evolutionItem(
        "UP_GRADE",
        "UP-GRADE",
        3000
    )

    evolutionItem(
        "METAL_COAT",
        "METAL COAT",
        3000
    )

    -- misc items (that will need coded functions eventually (UGH!!!))

    -- aerodactyl so good they changed his ass idk im a KEP larper i just follow the git
    normalItem(
        "WING_FOSSIL",
        "WING FOSSIL",
        7000
    )

    -- hyper training
    normalItem(
        "BOTTLE_CAP",
        "BOTTLE CAP",
        9800
    )

    -- key items (which will also need coded (UGH!!!!!!!!!!!!!!!!!!1!))
    -- actually no f$*%ing clue the project gets this far but may as well prepare them

    keyItem(
        "CANDY_JAR",
        "CANDY JAR"
    )

    keyItem(
        "FISHING_ROD",
        "FISHING ROD"
    )

    keyItem(
        "CITRINE_PASS",
        "CITRINE PASS"
    )

    keyItem(
        "OLD_SEA_MAP",
        "OLD SEA MAP"
    )

    keyItem(
        "MYSTERY_BOX",
        "MYSTERY BOX"
    )

    keyItem(
        "TEA",
        "TEA"
    )

    keyItem(
        "SILPHLETTER",
        "SILPH LETTER"
    )
end