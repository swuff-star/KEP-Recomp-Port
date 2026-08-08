return function(mod)
    local moves = mod.content.moves
    local effects = mod.content.move_effects

    -- futureproof compat bs thatll ideally never run

    local function ensureEffect(id, definition)
        local existing = effects:get(id)

        if existing ~= nil then
            -- if another mod adds a similar existing effect we try our best to use theirs instead of registering our own
            if existing.kind ~= definition.kind then
                error(
                    ("KEP Port: incompatible existing move effect %s "
                    .. "(expected kind %s, got %s)")
                    :format(
                        id,
                        tostring(definition.kind),
                        tostring(existing.kind)
                    ),
                    0
                )
            end

            if definition.accuracyChecked == true
                and existing.accuracyChecked ~= true then

                error(
                    ("KEP Port: incompatible existing move effect %s "
                    .. "(expected accuracyChecked = true)")
                    :format(id),
                    0
                )
            end

            return
        end

        effects:register(id, definition)
    end


    local function normalizeField(field, value)
        if field == "priority" then
            return value or 0
        elseif field == "highCrit" then
            return value == true
        end

        return value
    end


    local function ensureMove(id, definition)
        local existing = moves:get(id)

        if existing ~= nil then
            -- if some other mod implements this move we'll let theirs have priority
            local mechanics = {
                "type",
                "power",
                "accuracy",
                "pp",
                "effect",
                "category",
                "priority",
                "highCrit",
            }

            for _, field in ipairs(mechanics) do
                local have = normalizeField(field, existing[field])
                local want = normalizeField(field, definition[field])

                if have ~= want then
                    error(
                        ("KEP Port: incompatible existing move %s.%s "
                        .. "(expected %s, got %s)")
                        :format(
                            id,
                            field,
                            tostring(want),
                            tostring(have)
                        ),
                        0
                    )
                end
            end

            return
        end

        definition.id = id
        moves:register(id, definition)
    end

    -- new move effects

    -- charm effect
    ensureEffect("ATTACK_DOWN2_EFFECT", {
        kind = "primary",
        accuracyChecked = true,

        run = function(ctx)
            return ctx.changeStage(
                ctx.target,
                "attack",
                -2,
                true
            )
        end,
    })


    -- metal sound / fake tears effect
    ensureEffect("SPECIAL_DOWN2_EFFECT", {
        kind = "primary",
        accuracyChecked = true,

        run = function(ctx)
            return ctx.changeStage(
                ctx.target,
                "special",
                -2,
                true
            )
        end,
    })

    -- fairy

    ensureMove("FAIRY_WIND", {
        name = "FAIRY WIND",
        type = "FAIRY",
        category = "special",

        power = 40,
        accuracy = 100,
        pp = 30,

        effect = "NO_ADDITIONAL_EFFECT",
    })


    ensureMove("DRAININGKISS", {
        name = "DRAININGKISS",
        type = "FAIRY",
        category = "special",

        power = 50,
        accuracy = 100,
        pp = 10,

        effect = "DRAIN_HP_EFFECT",
    })


    ensureMove("DAZZLE_GLEAM", {
        name = "DAZZLE GLEAM",
        type = "FAIRY",
        category = "special",

        power = 80,
        accuracy = 100,
        pp = 10,

        effect = "NO_ADDITIONAL_EFFECT",
    })


    ensureMove("CHARM", {
        name = "CHARM",
        type = "FAIRY",
        category = "status",

        power = 0,
        accuracy = 100,
        pp = 20,

        effect = "ATTACK_DOWN2_EFFECT",
    })


    ensureMove("SWEET_KISS", {
        name = "SWEET KISS",
        type = "FAIRY",
        category = "status",

        power = 0,
        accuracy = 75,
        pp = 10,

        effect = "CONFUSION_EFFECT",
    })


    ensureMove("DISARMING_VOICE", {
        -- char limit
        name = "DISARMVOICE",
        type = "FAIRY",
        category = "special",

        power = 40,
        accuracy = 100,
        pp = 15,

        effect = "SWIFT_EFFECT",
    })

    -- steel

    ensureMove("METAL_SOUND", {
        name = "METAL SOUND",
        type = "STEEL",
        category = "status",

        power = 0,
        accuracy = 85,
        pp = 40,

        effect = "SPECIAL_DOWN2_EFFECT",
    })


    ensureMove("MAGNET_BOMB", {
        name = "MAGNET BOMB",
        type = "STEEL",
        category = "physical",

        power = 60,
        accuracy = 100,
        pp = 20,

        effect = "SWIFT_EFFECT",
    })


    ensureMove("IRON_DEFENSE", {
        name = "IRON DEFENSE",
        type = "STEEL",
        category = "status",

        power = 0,
        accuracy = 100,
        pp = 15,

        effect = "DEFENSE_UP2_EFFECT",
    })


    ensureMove("IRON_HEAD", {
        name = "IRON HEAD",
        type = "STEEL",
        category = "physical",

        power = 80,
        accuracy = 100,
        pp = 15,

        effect = "FLINCH_SIDE_EFFECT2",
    })


    ensureMove("BULLET_PUNCH", {
        name = "BULLET PUNCH",
        type = "STEEL",
        category = "physical",

        power = 40,
        accuracy = 100,
        pp = 30,

        effect = "NO_ADDITIONAL_EFFECT",

        priority = 1,
    })


    ensureMove("MIRROR_SHOT", {
        name = "MIRROR SHOT",
        type = "STEEL",
        category = "physical",

        power = 65,
        accuracy = 85,
        pp = 10,

        effect = "ACCURACY_DOWN1_EFFECT",
    })


    ensureMove("SMART_STRIKE", {
        name = "SMART STRIKE",
        type = "STEEL",
        category = "physical",

        power = 70,
        accuracy = 100,
        pp = 10,

        effect = "SWIFT_EFFECT",
    })

    -- dark

    ensureMove("NIGHT_SLASH", {
        name = "NIGHT SLASH",
        type = "DARK",
        category = "special",

        power = 70,
        accuracy = 100,
        pp = 15,

        effect = "NO_ADDITIONAL_EFFECT",

        highCrit = true,
    })


    ensureMove("FEINT_ATTACK", {
        -- iconic
        name = "FAINT ATTACK",
        type = "DARK",
        category = "special",

        power = 60,
        accuracy = 100,
        pp = 20,

        effect = "SWIFT_EFFECT",
    })


    ensureMove("BRUTAL_SWING", {
        name = "BRUTAL SWING",
        type = "DARK",
        category = "special",

        power = 60,
        accuracy = 100,
        pp = 20,

        effect = "NO_ADDITIONAL_EFFECT",
    })


    ensureMove("FAKE_TEARS", {
        name = "FAKE TEARS",
        type = "DARK",
        category = "status",

        power = 0,
        accuracy = 100,
        pp = 20,

        effect = "SPECIAL_DOWN2_EFFECT",
    })


    ensureMove("FALSE_SURRENDER", {
        -- preserve 12 char limit
        name = "FAKESURRENDR",
        type = "DARK",
        category = "special",

        power = 80,
        accuracy = 100,
        pp = 10,

        effect = "SWIFT_EFFECT",
    })


    ensureMove("KOWTOW_CLEAVE", {
        -- see above comment
        name = "KOWTOWCLEAVE",
        type = "DARK",
        category = "special",

        power = 85,
        accuracy = 100,
        pp = 10,

        effect = "SWIFT_EFFECT",
    })


    ensureMove("NASTY_PLOT", {
        name = "NASTY PLOT",
        type = "DARK",
        category = "status",

        power = 0,
        accuracy = 100,
        pp = 10,

        effect = "SPECIAL_UP2_EFFECT",
    })

    -- other
    ensureMove("UPPERCUT", {
        name = "UPPERCUT",
        type = "FIGHTING",
        category = "physical",

        power = 55,
        accuracy = 80,
        pp = 15,

        effect = "FLINCH_SIDE_EFFECT2",
    })


    ensureMove("POWDER_SNOW", {
        name = "POWDER SNOW",
        type = "ICE",
        category = "special",

        power = 40,
        accuracy = 100,
        pp = 25,

        effect = "FREEZE_SIDE_EFFECT1",
    })
end