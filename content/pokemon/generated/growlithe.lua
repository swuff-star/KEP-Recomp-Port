local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local growlitheChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 13,
                        fade = 6,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 4,
                        frequency = 1849,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1850,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 14,
                        fade = 6,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1784,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1788,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 4,
                        parameter = 102,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 10,
                        fade = 5,
                        parameter = 100,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 101,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 100,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GROWLITHE", {
        chip = growlitheChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_GROWLITHE", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GROWLITHE", "It's very friendly\nand faithful to\npeople. CINNABAR's\necosystem may have\ninfluenced its\ndevelopment")

    mod.content.pokemon:patch("GROWLITHE", {
        name = "GROWLITHE",
        dex = 110,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 55,
            attack = 70,
            defense = 45,
            speed = 60,
            special = 50,
        },

        catchRate = 190,
        baseExp = 91,
        growthRate = "SLOW",

        level1Moves = {
            "BITE",
            "ROAR",
        },

        learnset = {
            { level = 10, move = "RAGE" },
            { level = 18, move = "EMBER" },
            { level = 23, move = "LEER" },
            { level = 30, move = "TAKE_DOWN" },
            { level = 39, move = "AGILITY" },
            { level = 44, move = "DOUBLE_EDGE" },
            { level = 50, move = "FLAMETHROWER" },
        },

        evolutions = {
            { method = "ITEM", item = "FIRE_STONE", species = "ARCANINE" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "DRAGON_RAGE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "QUADRUPED",
        palette = "KEP_GROWLITHE",
        cry = "GROWLITHE",

        spriteFront = mod.assets:path("assets/pokemon/generated/growlithe/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/growlithe/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "PUPPY",
            heightFt = 2,
            heightIn = 4,
            weight = 420,
            text = "KEP_DEX_GROWLITHE",
        },
    })
end
