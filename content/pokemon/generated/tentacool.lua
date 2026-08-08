local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local tentacoolChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1860,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1952,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 7,
                        frequency = 1793,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 1794,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1890,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 44,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("TENTACOOL", {
        chip = tentacoolChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_TENTACOOL", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TENTACOOL", "Emits odd lights\nfrom its eyes to\nconfuse plankton.\n99 percent of its\nbody is made up\nof water")

    mod.content.pokemon:patch("TENTACOOL", {
        name = "TENTACOOL",
        dex = 132,

        types = {
            "WATER",
            "POISON",
        },

        baseStats = {
            hp = 40,
            attack = 40,
            defense = 35,
            speed = 70,
            special = 100,
        },

        catchRate = 190,
        baseExp = 105,
        growthRate = "SLOW",

        level1Moves = {
            "ACID",
        },

        learnset = {
            { level = 7, move = "SUPERSONIC" },
            { level = 13, move = "WRAP" },
            { level = 18, move = "POISON_STING" },
            { level = 22, move = "WATER_GUN" },
            { level = 27, move = "CONSTRICT" },
            { level = 33, move = "BARRIER" },
            { level = 40, move = "SCREECH" },
            { level = 48, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "TENTACRUEL" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
            "MEGA_DRAIN",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "SURF",
        },

        icon = "WATER",
        palette = "KEP_TENTACOOL",
        cry = "TENTACOOL",

        spriteFront = mod.assets:path("assets/pokemon/generated/tentacool/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/tentacool/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "JELLYFISH",
            heightFt = 2,
            heightIn = 11,
            weight = 1000,
            text = "KEP_DEX_TENTACOOL",
        },
    })
end
