local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local rhydonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        frequency = 1956,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 6,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 3,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 3,
                        frequency = 1827,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1832,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1840,
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
                        volume = 0,
                        fade = 0,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 7,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 6,
                        frequency = 1859,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 7,
                        fade = 6,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 8,
                        fade = 3,
                        frequency = 1730,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 7,
                        fade = 3,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 8,
                        fade = 2,
                        frequency = 1740,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1752,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 7,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 6,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 5,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 2,
                        parameter = 61,
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

    mod.content.cries:override("RHYDON", {
        chip = rhydonChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_RHYDON", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RHYDON", "After standing on\nits hind legs, its\nbrain developed.\nIt can punch holes\nthrough boulders\nwith its horn")

    mod.content.pokemon:patch("RHYDON", {
        name = "RHYDON",
        dex = 194,

        types = {
            "GROUND",
            "ROCK",
        },

        baseStats = {
            hp = 105,
            attack = 130,
            defense = 120,
            speed = 40,
            special = 45,
        },

        catchRate = 60,
        baseExp = 204,
        growthRate = "SLOW",

        level1Moves = {
            "HORN_ATTACK",
            "STOMP",
            "TAIL_WHIP",
            "FURY_ATTACK",
        },

        learnset = {
            { level = 20, move = "STOMP" },
            { level = 25, move = "TAIL_WHIP" },
            { level = 30, move = "FURY_ATTACK" },
            { level = 35, move = "ROCK_SLIDE" },
            { level = 40, move = "HORN_DRILL" },
            { level = 48, move = "LEER" },
            { level = 55, move = "EARTHQUAKE" },
            { level = 64, move = "TAKE_DOWN" },
        },

        evolutions = {
            { method = "ITEM", item = "PROTECTOR", species = "RHYPERIOR" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "PAY_DAY",
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
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_RHYDON",
        cry = "RHYDON",

        spriteFront = mod.assets:path("assets/pokemon/generated/rhydon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/rhydon/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "DRILL",
            heightFt = 6,
            heightIn = 3,
            weight = 2650,
            text = "KEP_DEX_RHYDON",
        },
    })
end
