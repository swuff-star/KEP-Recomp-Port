local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gloomChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1551,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 4,
                        frequency = 1574,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1542,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 1510,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 6,
                        frequency = 1453,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 11,
                        fade = 4,
                        frequency = 1477,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 2,
                        frequency = 1444,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1413,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        parameter = 246,
                    } },
                    { noiseNote = {
                        len = 12,
                        volume = 13,
                        fade = 7,
                        parameter = 6,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 246,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GLOOM", {
        chip = gloomChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_GLOOM", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GLOOM", "Its pistil emits\nan incredibly foul\nodor. The stench\nalone can cause\nfainting from over\na mile away")

    mod.content.pokemon:patch("GLOOM", {
        name = "GLOOM",
        dex = 82,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 60,
            attack = 65,
            defense = 70,
            speed = 40,
            special = 85,
        },

        catchRate = 120,
        baseExp = 132,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "ABSORB",
            "POISONPOWDER",
            "STUN_SPORE",
        },

        learnset = {
            { level = 15, move = "POISONPOWDER" },
            { level = 17, move = "STUN_SPORE" },
            { level = 19, move = "SLEEP_POWDER" },
            { level = 28, move = "ACID" },
            { level = 38, move = "PETAL_DANCE" },
            { level = 52, move = "SOLARBEAM" },
        },

        evolutions = {
            { method = "ITEM", item = "POISON_STONE", species = "VILEPLUME" },
            { method = "ITEM", item = "LEAF_STONE", species = "BELLOSSOM" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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
        palette = "KEP_GLOOM",
        cry = "GLOOM",

        spriteFront = mod.assets:path("assets/pokemon/generated/gloom/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gloom/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "WEED",
            heightFt = 2,
            heightIn = 7,
            weight = 190,
            text = "KEP_DEX_GLOOM",
        },
    })
end
