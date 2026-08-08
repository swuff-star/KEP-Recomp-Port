local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local clefableChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 2,
                        frequency = 2026,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 10,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 2010,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 2010,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 0, 0, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1963,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1970,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 2027,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1963,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1963,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("CLEFABLE", {
        chip = clefableChip.chip,
        pitch = 0,
        length = 32,
    })

    mod.content.palettes:register("KEP_CLEFABLE", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CLEFABLE", "Its hearing is\nincredibly well-\ndeveloped. It can\nhear a pin drop\nfrom over half\na mile away")

    mod.content.pokemon:patch("CLEFABLE", {
        name = "CLEFABLE",
        dex = 66,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 95,
            attack = 70,
            defense = 73,
            speed = 60,
            special = 85,
        },

        catchRate = 25,
        baseExp = 129,
        growthRate = "FAST",

        level1Moves = {
            "SING",
            "DOUBLESLAP",
            "MINIMIZE",
            "METRONOME",
        },

        learnset = {},

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "SOLARBEAM",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "FAIRY",
        palette = "KEP_CLEFABLE",
        cry = "CLEFABLE",

        spriteFront = mod.assets:path("assets/pokemon/generated/clefable/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/clefable/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FAIRY",
            heightFt = 4,
            heightIn = 3,
            weight = 880,
            text = "KEP_DEX_CLEFABLE",
        },
    })
end
