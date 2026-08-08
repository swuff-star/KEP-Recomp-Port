local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local sandslash_aChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 23,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 151,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 87,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 0, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 7,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 5,
                        frequency = 135,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 71,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        parameter = 27,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 9,
                        fade = 4,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 27,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SANDSLASH_A", {
        chip = sandslash_aChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_SANDSLASH_A", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SANDSLASH_A", "It adapted to a\nfrigid region. A\nwound caused by\nits sharp claws\ncan cause severe\nfrostbite")

    mod.content.pokemon:register("SANDSLASH_A", {
        id = "SANDSLASH_A",
        name = "SANDSLASH",
        dex = 71,

        types = {
            "ICE",
            "STEEL",
        },

        baseStats = {
            hp = 75,
            attack = 100,
            defense = 120,
            speed = 65,
            special = 65,
        },

        catchRate = 90,
        baseExp = 163,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "SAND_ATTACK",
            "POWDER_SNOW",
        },

        learnset = {
            { level = 21, move = "SWIFT" },
            { level = 24, move = "FURY_SWIPES" },
            { level = 27, move = "IRON_DEFENSE" },
            { level = 30, move = "SLASH" },
            { level = 33, move = "IRON_HEAD" },
            { level = 36, move = "SWORDS_DANCE" },
            { level = 45, move = "BLIZZARD" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "SEISMIC_TOSS",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_SANDSLASH_A",
        cry = "SANDSLASH_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/sandslash_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/sandslash_a/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "MOUSE",
            heightFt = 3,
            heightIn = 11,
            weight = 1210,
            text = "KEP_DEX_SANDSLASH_A",
        },
    })
end
