local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local nidorinaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1580,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1932,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1868,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1852,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1821,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 5,
                        frequency = 1918,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        frequency = 1853,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1581,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        parameter = 104,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 9,
                        fade = 4,
                        parameter = 88,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 8,
                        fade = 2,
                        parameter = 72,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        parameter = 88,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("NIDORINA", {
        chip = nidorinaChip.chip,
        pitch = 0,
        length = 224,
    })

    mod.content.palettes:register("KEP_NIDORINA", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NIDORINA", "Emits ultrasonic\ncries that can\nallure foes. It\nlost the ability\nto lay eggs\nupon evolving")

    mod.content.pokemon:patch("NIDORINA", {
        name = "NIDORINA",
        dex = 49,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 70,
            attack = 62,
            defense = 67,
            speed = 56,
            special = 55,
        },

        catchRate = 120,
        baseExp = 117,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "GROWL",
            "TACKLE",
            "SCRATCH",
        },

        learnset = {
            { level = 8, move = "SCRATCH" },
            { level = 12, move = "DOUBLE_KICK" },
            { level = 19, move = "POISON_STING" },
            { level = 27, move = "TAIL_WHIP" },
            { level = 36, move = "BITE" },
            { level = 46, move = "FURY_SWIPES" },
            { level = 55, move = "TAKE_DOWN" },
        },

        evolutions = {
            { method = "ITEM", item = "MOON_STONE", species = "NIDOREIGN" },
            { method = "ITEM", item = "POISON_STONE", species = "NIDOQUEEN" },
            { method = "LEVEL", level = 36, species = "NIDOQUEEN" },
        },

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_NIDORINA",
        cry = "NIDORINA",

        spriteFront = mod.assets:path("assets/pokemon/generated/nidorina/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/nidorina/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "POISON PIN",
            heightFt = 2,
            heightIn = 7,
            weight = 440,
            text = "KEP_DEX_NIDORINA",
        },
    })
end
