local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local blastykeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1719,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 3,
                        frequency = 1715,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1735,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1767,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1783,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 1, 2, 1 } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1448,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        frequency = 1444,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        frequency = 1464,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 2,
                        frequency = 1480,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1496,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1512,
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
                        parameter = 83,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 13,
                        fade = 6,
                        parameter = 99,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        parameter = 67,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        parameter = 83,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        parameter = 67,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 83,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("BLASTYKE", {
        chip = blastykeChip.chip,
        pitch = 0,
        length = 0,
    })

    mod.content.palettes:register("KEP_BLASTYKE", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BLASTYKE", "It spews bubbles\nfrom the ports\non its shell.\nThis POKéMON and\nSQUIRTLE are\nrelated species")

    mod.content.pokemon:register("BLASTYKE", {
        id = "BLASTYKE",
        name = "BLASTYKE",
        dex = 187,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 49,
            attack = 43,
            defense = 60,
            speed = 48,
            special = 45,
        },

        catchRate = 45,
        baseExp = 66,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 8, move = "BUBBLE" },
            { level = 15, move = "WATER_GUN" },
            { level = 22, move = "BITE" },
            { level = 28, move = "WITHDRAW" },
            { level = 35, move = "SKULL_BASH" },
            { level = 42, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 36, species = "BLASTOISE" },
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
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "WATER",
        palette = "KEP_BLASTYKE",
        cry = "BLASTYKE",

        spriteFront = mod.assets:path("assets/pokemon/generated/blastyke/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/blastyke/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "BUBBLE",
            heightFt = 2,
            heightIn = 7,
            weight = 760,
            text = "KEP_DEX_BLASTYKE",
        },
    })
end
