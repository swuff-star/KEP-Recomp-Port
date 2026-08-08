local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gengarChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 4,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1568,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1667,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 11,
                        fade = 4,
                        frequency = 1538,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1537,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GENGAR", {
        chip = gengarChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_GENGAR", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GENGAR", "Shrines have been\nbuilt to honor it.\nSaid to emerge\nfrom the dark to\nkill people lost\non mountains")

    mod.content.pokemon:patch("GENGAR", {
        name = "GENGAR",
        dex = 157,

        types = {
            "GHOST",
            "POISON",
        },

        baseStats = {
            hp = 60,
            attack = 65,
            defense = 60,
            speed = 110,
            special = 130,
        },

        catchRate = 45,
        baseExp = 190,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "LICK",
            "CONFUSE_RAY",
            "NIGHT_SHADE",
        },

        learnset = {
            { level = 29, move = "HYPNOSIS" },
            { level = 38, move = "DREAM_EATER" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MEGA_DRAIN",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "SELFDESTRUCT",
            "SKULL_BASH",
            "DREAM_EATER",
            "REST",
            "PSYWAVE",
            "EXPLOSION",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_GENGAR",
        cry = "GENGAR",

        spriteFront = mod.assets:path("assets/pokemon/generated/gengar/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gengar/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SHADOW",
            heightFt = 4,
            heightIn = 11,
            weight = 890,
            text = "KEP_DEX_GENGAR",
        },
    })
end
