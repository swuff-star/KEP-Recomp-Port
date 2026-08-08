local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local poliwhirlChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1911,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 2039,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1975,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1655,
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
                        frequency = 1880,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1880,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1784,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1624,
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
                        parameter = 169,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 152,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 136,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("POLIWHIRL", {
        chip = poliwhirlChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_POLIWHIRL", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_POLIWHIRL", "Its two legs are\nwell-developed.\nThough capable of\nliving on land, it\nmuch prefers life\nin the water")

    mod.content.pokemon:patch("POLIWHIRL", {
        name = "POLIWHIRL",
        dex = 100,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 65,
            attack = 65,
            defense = 65,
            speed = 90,
            special = 50,
        },

        catchRate = 120,
        baseExp = 131,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "BUBBLE",
            "HYPNOSIS",
            "WATER_GUN",
            "BIDE",
        },

        learnset = {
            { level = 16, move = "HYPNOSIS" },
            { level = 19, move = "WATER_GUN" },
            { level = 26, move = "DOUBLESLAP" },
            { level = 33, move = "BODY_SLAM" },
            { level = 41, move = "AMNESIA" },
            { level = 49, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "ITEM", item = "WATER_STONE", species = "POLIWRATH" },
            { method = "ITEM", item = "HEART_STONE", species = "POLITOED" },
        },

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
        palette = "KEP_POLIWHIRL",
        cry = "POLIWHIRL",

        spriteFront = mod.assets:path("assets/pokemon/generated/poliwhirl/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/poliwhirl/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "TADPOLE",
            heightFt = 3,
            heightIn = 3,
            weight = 440,
            text = "KEP_DEX_POLIWHIRL",
        },
    })
end
