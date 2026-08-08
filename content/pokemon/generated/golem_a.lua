local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local golem_aChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 1312,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1392,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1376,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 2, 3, 2 } },
                    { squareNote = {
                        len = 12,
                        volume = 13,
                        fade = 2,
                        frequency = 1304,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1400,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1384,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1368,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 60,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GOLEM_A", {
        chip = golem_aChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_GOLEM_A", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GOLEM_A", "It charges rocks\nwith electricity,\nthen fires them.\nIf it can't find\nammo, it may fire\nGEODUDE instead")

    mod.content.pokemon:register("GOLEM_A", {
        id = "GOLEM_A",
        name = "GOLEM",
        dex = 62,

        types = {
            "ROCK",
            "ELECTRIC",
        },

        baseStats = {
            hp = 80,
            attack = 110,
            defense = 130,
            speed = 45,
            special = 55,
        },

        catchRate = 45,
        baseExp = 177,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "DEFENSE_CURL",
        },

        learnset = {
            { level = 11, move = "DEFENSE_CURL" },
            { level = 16, move = "ROCK_THROW" },
            { level = 21, move = "SELFDESTRUCT" },
            { level = 25, move = "MEGA_PUNCH" },
            { level = 30, move = "THUNDERPUNCH" },
            { level = 35, move = "THUNDER_WAVE" },
            { level = 40, move = "BODY_SLAM" },
            { level = 45, move = "ROCK_SLIDE" },
            { level = 50, move = "EXPLOSION" },
            { level = 55, move = "DOUBLE_EDGE" },
            { level = 60, move = "THUNDER" },
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
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "SELFDESTRUCT",
            "FIRE_BLAST",
            "REST",
            "THUNDER_WAVE",
            "EXPLOSION",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_GOLEM_A",
        cry = "GOLEM_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/golem_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/golem_a/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "MEGATON",
            heightFt = 5,
            heightIn = 7,
            weight = 6970,
            text = "KEP_DEX_GOLEM_A",
        },
    })
end
