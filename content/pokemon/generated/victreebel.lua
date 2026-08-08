local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local victreebelChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 4,
                        frequency = 1958,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1942,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1958,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1966,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1974,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 1, 3 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1912,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        frequency = 1898,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1912,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1927,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1944,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 146,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 6,
                        parameter = 162,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 11,
                        fade = 6,
                        parameter = 146,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 130,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("VICTREEBEL", {
        chip = victreebelChip.chip,
        pitch = 0,
        length = 204,
    })

    mod.content.palettes:register("KEP_VICTREEBEL", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VICTREEBEL", "Lures prey with a\nhoneylike aroma.\nOmnivorous, it\nwill eat anything\nthat can fit\ninside its mouth")

    mod.content.pokemon:patch("VICTREEBEL", {
        name = "VICTREEBEL",
        dex = 87,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 80,
            attack = 105,
            defense = 65,
            speed = 70,
            special = 100,
        },

        catchRate = 45,
        baseExp = 191,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "SLEEP_POWDER",
            "STUN_SPORE",
            "ACID",
            "RAZOR_LEAF",
        },

        learnset = {
            { level = 13, move = "WRAP" },
            { level = 15, move = "POISONPOWDER" },
            { level = 18, move = "SLEEP_POWDER" },
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
        palette = "KEP_VICTREEBEL",
        cry = "VICTREEBEL",

        spriteFront = mod.assets:path("assets/pokemon/generated/victreebel/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/victreebel/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FLYCATCHER",
            heightFt = 5,
            heightIn = 7,
            weight = 340,
            text = "KEP_DEX_VICTREEBEL",
        },
    })
end
