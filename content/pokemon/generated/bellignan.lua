local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local bellignanChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 1,
                        frequency = 1933,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 1,
                        frequency = 1901,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 1,
                        frequency = 1869,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        frequency = 141,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        frequency = 125,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        frequency = 109,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1933,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 15,
                        fade = 2,
                        frequency = 1933,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 3, 0, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 93,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1853,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 1,
                        frequency = 93,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 1,
                        frequency = 1885,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 1853,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 14,
                        fade = 2,
                        frequency = 1853,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 8,
                        fade = -2,
                        parameter = 154,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 137,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = -2,
                        parameter = 154,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 138,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 136,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 138,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 11,
                        fade = 2,
                        parameter = 172,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("BELLIGNAN", {
        chip = bellignanChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_BELLIGNAN", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BELLIGNAN", "A plant POKéMON\nthat's revered in\nanother region.\nIt can absorb\nuseful nutrients\nfound in soil")

    mod.content.pokemon:register("BELLIGNAN", {
        id = "BELLIGNAN",
        name = "BELLIGNAN",
        dex = 88,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 80,
            attack = 120,
            defense = 65,
            speed = 70,
            special = 85,
        },

        catchRate = 45,
        baseExp = 191,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "SLEEP_POWDER",
            "RAZOR_LEAF",
            "LOVELY_KISS",
            "ACID",
        },

        learnset = {
            { level = 13, move = "WRAP" },
            { level = 15, move = "POISONPOWDER" },
            { level = 18, move = "SLEEP_POWDER" },
            { level = 40, move = "LOVELY_KISS" },
            { level = 48, move = "SOLARBEAM" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "GRASS",
        palette = "KEP_BELLIGNAN",
        cry = "BELLIGNAN",

        spriteFront = mod.assets:path("assets/pokemon/generated/bellignan/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/bellignan/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SPROUT",
            heightFt = 4,
            heightIn = 3,
            weight = 160,
            text = "KEP_DEX_BELLIGNAN",
        },
    })
end
