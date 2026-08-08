local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local aerodactylChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 4,
                        frequency = 2017,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 6,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 2016,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 3, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 7,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 9,
                        fade = 6,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 3,
                        frequency = 1953,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 14,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("AERODACTYL", {
        chip = aerodactylChip.chip,
        pitch = 0,
        length = 240,
    })

    mod.content.palettes:register("KEP_AERODACTYL", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_AERODACTYL", "The progenitor of\nbirds. It flew\non broad wings,\ncommunicating by\nemitting high-\npitched cries")

    mod.content.pokemon:patch("AERODACTYL", {
        name = "AERODACTYL",
        dex = 229,

        types = {
            "ROCK",
            "FLYING",
        },

        baseStats = {
            hp = 80,
            attack = 105,
            defense = 65,
            speed = 130,
            special = 60,
        },

        catchRate = 45,
        baseExp = 202,
        growthRate = "SLOW",

        level1Moves = {
            "WING_ATTACK",
            "AGILITY",
        },

        learnset = {
            { level = 21, move = "ROCK_THROW" },
            { level = 33, move = "SUPERSONIC" },
            { level = 38, move = "BITE" },
            { level = 45, move = "TAKE_DOWN" },
            { level = 54, move = "HYPER_BEAM" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "DRAGON_RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKY_ATTACK",
            "REST",
            "SUBSTITUTE",
            "FLY",
        },

        icon = "BIRD",
        palette = "KEP_AERODACTYL",
        cry = "AERODACTYL",

        spriteFront = mod.assets:path("assets/pokemon/generated/aerodactyl/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/aerodactyl/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FOSSIL",
            heightFt = 5,
            heightIn = 11,
            weight = 1300,
            text = "KEP_DEX_AERODACTYL",
        },
    })
end
