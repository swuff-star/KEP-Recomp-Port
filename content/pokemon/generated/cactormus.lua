local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local cactormusChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1944,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 24,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 2008,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 0, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1928,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 5,
                        frequency = 8,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1992,
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
                        fade = 1,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 9,
                        fade = 4,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 156,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("CACTORMUS", {
        chip = cactormusChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_CACTORMUS", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CACTORMUS", "Found in arid\nregions. Its legs\nare adapted for\nmaneuverability\non sandy and\nrocky terrain")

    mod.content.pokemon:register("CACTORMUS", {
        id = "CACTORMUS",
        name = "CACTORMUS",
        dex = 210,

        types = {
            "GRASS",
            "GROUND",
        },

        baseStats = {
            hp = 60,
            attack = 95,
            defense = 100,
            speed = 90,
            special = 75,
        },

        catchRate = 45,
        baseExp = 177,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BARRAGE",
            "SAND_ATTACK",
        },

        learnset = {
            { level = 7, move = "VINE_WHIP" },
            { level = 17, move = "HORN_ATTACK" },
            { level = 21, move = "GROWTH" },
            { level = 25, move = "PIN_MISSILE" },
            { level = 31, move = "FURY_ATTACK" },
            { level = 39, move = "FEINT_ATTACK" },
            { level = 45, move = "SPIKE_CANNON" },
            { level = 50, move = "EXPLOSION" },
        },

        evolutions = {},

        tmhm = {
            "WHIRLWIND",
            "MEGA_KICK",
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SELFDESTRUCT",
            "SWIFT",
            "REST",
            "EXPLOSION",
            "TRI_ATTACK",
            "SUBSTITUTE",
        },

        icon = "GRASS",
        palette = "KEP_CACTORMUS",
        cry = "CACTORMUS",

        spriteFront = mod.assets:path("assets/pokemon/generated/cactormus/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/cactormus/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "NEEDLE",
            heightFt = 2,
            heightIn = 11,
            weight = 520,
            text = "KEP_DEX_CACTORMUS",
        },
    })
end
