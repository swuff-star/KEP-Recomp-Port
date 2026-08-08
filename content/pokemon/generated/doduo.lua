local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local doduoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1979,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 59,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 2043,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2043,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 59,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1979,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1980,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 61,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        frequency = 2045,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 2044,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 13,
                        volume = 0,
                        fade = 0,
                        frequency = 187,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1980,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 61,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 2044,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2044,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 61,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1980,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 0,
                        fade = 0,
                        parameter = 187,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        parameter = 187,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 7,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 231,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 247,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 247,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        parameter = 231,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 7,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("DODUO", {
        chip = doduoChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_DODUO", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DODUO", "A sudden mutation\nfirst discovered\n3 years ago. Its\ntiny wings make\nflying difficult,\nso prefers to run")

    mod.content.pokemon:patch("DODUO", {
        name = "DODUO",
        dex = 163,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 35,
            attack = 85,
            defense = 45,
            speed = 75,
            special = 35,
        },

        catchRate = 190,
        baseExp = 96,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "GROWL",
        },

        learnset = {
            { level = 11, move = "FURY_ATTACK" },
            { level = 20, move = "QUICK_ATTACK" },
            { level = 24, move = "RAGE" },
            { level = 28, move = "DRILL_PECK" },
            { level = 33, move = "TRI_ATTACK" },
            { level = 38, move = "AGILITY" },
        },

        evolutions = {
            { method = "LEVEL", level = 31, species = "DODRIO" },
        },

        tmhm = {
            "WHIRLWIND",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "SKY_ATTACK",
            "REST",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "FLY",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/smallbird.png"),
            frames = 2,
        },
        palette = "KEP_DODUO",
        cry = "DODUO",

        spriteFront = mod.assets:path("assets/pokemon/generated/doduo/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/doduo/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "TWIN BIRD",
            heightFt = 4,
            heightIn = 7,
            weight = 860,
            text = "KEP_DEX_DODUO",
        },
    })
end
