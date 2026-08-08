local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local poliwrathChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1536,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        frequency = 1761,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1761,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1505,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 50,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 33,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 17,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("POLIWRATH", {
        chip = poliwrathChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_POLIWRATH", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_POLIWRATH", "An adept swimmer,\nfaster than any\nOlympic athlete.\nWhy it remains in\na tadpole form is\nstill unknown")

    mod.content.pokemon:patch("POLIWRATH", {
        name = "POLIWRATH",
        dex = 101,

        types = {
            "WATER",
            "FIGHTING",
        },

        baseStats = {
            hp = 90,
            attack = 85,
            defense = 95,
            speed = 70,
            special = 70,
        },

        catchRate = 45,
        baseExp = 185,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "HYPNOSIS",
            "WATER_GUN",
            "DOUBLESLAP",
            "BODY_SLAM",
        },

        learnset = {
            { level = 16, move = "HYPNOSIS" },
            { level = 19, move = "WATER_GUN" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_POLIWRATH",
        cry = "POLIWRATH",

        spriteFront = mod.assets:path("assets/pokemon/generated/poliwrath/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/poliwrath/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "TADPOLE",
            heightFt = 4,
            heightIn = 3,
            weight = 1190,
            text = "KEP_DEX_POLIWRATH",
        },
    })
end
