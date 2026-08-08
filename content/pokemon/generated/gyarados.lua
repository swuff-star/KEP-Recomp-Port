local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gyaradosChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1280,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 1288,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 1152,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1120,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 7,
                        frequency = 1153,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 7,
                        frequency = 1161,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 11,
                        fade = 4,
                        frequency = 1025,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 993,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 15,
                        volume = 15,
                        fade = 7,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 15,
                        fade = 6,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 14,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        parameter = 108,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GYARADOS", {
        chip = gyaradosChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_GYARADOS", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GYARADOS", "Lives on the sea\nfloor. Its scales\nare used to make\njewelery, which\ncommand extremely\nhigh prices")

    mod.content.pokemon:patch("GYARADOS", {
        name = "GYARADOS",
        dex = 90,

        types = {
            "WATER",
            "FLYING",
        },

        baseStats = {
            hp = 95,
            attack = 125,
            defense = 79,
            speed = 81,
            special = 100,
        },

        catchRate = 45,
        baseExp = 214,
        growthRate = "SLOW",

        level1Moves = {
            "TACKLE",
        },

        learnset = {
            { level = 20, move = "BITE" },
            { level = 25, move = "DRAGON_RAGE" },
            { level = 32, move = "LEER" },
            { level = 41, move = "HYDRO_PUMP" },
            { level = 52, move = "HYPER_BEAM" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "DRAGON_RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "SNAKE",
        palette = "KEP_GYARADOS",
        cry = "GYARADOS",

        spriteFront = mod.assets:path("assets/pokemon/generated/gyarados/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gyarados/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "ATROCIOUS",
            heightFt = 21,
            heightIn = 4,
            weight = 5180,
            text = "KEP_DEX_GYARADOS",
        },
    })
end
