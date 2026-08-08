local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local koltaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 4,
                        frequency = 1911,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1895,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1911,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1919,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1927,
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
                        frequency = 1865,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        frequency = 1851,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1865,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1880,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1897,
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
                        parameter = 99,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 6,
                        parameter = 115,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 11,
                        fade = 6,
                        parameter = 99,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 83,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("KOLTA", {
        chip = koltaChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_KOLTA", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KOLTA", "A weak runner that\ngradually becomes\nfaster by chasing\nafter its parent.\nIts fiery mane is\nhot to touch")

    mod.content.pokemon:register("KOLTA", {
        id = "KOLTA",
        name = "KOLTA",
        dex = 151,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 30,
            attack = 65,
            defense = 35,
            speed = 70,
            special = 45,
        },

        catchRate = 255,
        baseExp = 88,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "EMBER",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 7, move = "QUICK_ATTACK" },
            { level = 14, move = "GROWL" },
            { level = 21, move = "STOMP" },
            { level = 28, move = "AGILITY" },
            { level = 35, move = "FIRE_SPIN" },
            { level = 42, move = "TAKE_DOWN" },
        },

        evolutions = {
            { method = "LEVEL", level = 20, species = "PONYTA" },
        },

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
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
        palette = "KEP_KOLTA",
        cry = "KOLTA",

        spriteFront = mod.assets:path("assets/pokemon/generated/kolta/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kolta/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "FIRE HORSE",
            heightFt = 1,
            heightIn = 4,
            weight = 280,
            text = "KEP_DEX_KOLTA",
        },
    })
end
