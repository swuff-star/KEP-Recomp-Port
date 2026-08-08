local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local mr_rimeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 14,
                        volume = 15,
                        fade = 1,
                        frequency = 1041,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1045,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1041,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1041,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 1,
                        frequency = 1036,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1040,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 1,
                        frequency = 1036,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1034,
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
                        fade = 2,
                        parameter = 101,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 14,
                        fade = 2,
                        parameter = 85,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 2,
                        parameter = 86,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 102,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MR_RIME", {
        chip = mr_rimeChip.chip,
        pitch = 0,
        length = 104,
    })

    mod.content.palettes:register("KEP_MR_RIME", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MR_RIME", "As it tap-dances\naround, it waves\nits icy cane in\nperfect time,\nconjuring potent\npsychic energy")

    mod.content.pokemon:register("MR_RIME", {
        id = "MR_RIME",
        name = "MR.RIME",
        dex = 212,

        types = {
            "ICE",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 80,
            attack = 85,
            defense = 75,
            speed = 70,
            special = 110,
        },

        catchRate = 45,
        baseExp = 207,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONFUSION",
            "BARRIER",
            "REFLECT",
        },

        learnset = {
            { level = 23, move = "LIGHT_SCREEN" },
            { level = 28, move = "PSYBEAM" },
            { level = 31, move = "AURORA_BEAM" },
            { level = 39, move = "ICE_BEAM" },
            { level = 44, move = "PSYCHIC_M" },
            { level = 50, move = "FEINT_ATTACK" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_MR_RIME",
        cry = "MR_RIME",

        spriteFront = mod.assets:path("assets/pokemon/generated/mr_rime/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/mr_rime/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "COMEDIAN",
            heightFt = 4,
            heightIn = 11,
            weight = 1280,
            text = "KEP_DEX_MR_RIME",
        },
    })
end
