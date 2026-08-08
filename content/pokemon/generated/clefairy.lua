local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local clefairyChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 2,
                        frequency = 12,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 44,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 2044,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 2044,
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
                        frequency = 1997,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 2004,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 13,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1997,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1997,
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

    mod.content.cries:override("CLEFAIRY", {
        chip = clefairyChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_CLEFAIRY", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CLEFAIRY", "Its magical and\ncute appeal has\nmany admirers.\nOccasionally, it\nsurprises itself\nwith METRONOME")

    mod.content.pokemon:patch("CLEFAIRY", {
        name = "CLEFAIRY",
        dex = 65,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 70,
            attack = 45,
            defense = 48,
            speed = 35,
            special = 60,
        },

        catchRate = 150,
        baseExp = 68,
        growthRate = "FAST",

        level1Moves = {
            "POUND",
            "GROWL",
        },

        learnset = {
            { level = 13, move = "SING" },
            { level = 18, move = "DOUBLESLAP" },
            { level = 24, move = "MINIMIZE" },
            { level = 28, move = "TAKE_DOWN" },
            { level = 31, move = "METRONOME" },
            { level = 35, move = "BODY_SLAM" },
            { level = 39, move = "DEFENSE_CURL" },
            { level = 48, move = "LIGHT_SCREEN" },
        },

        evolutions = {
            { method = "ITEM", item = "MOON_STONE", species = "CLEFABLE" },
        },

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
        palette = "KEP_CLEFAIRY",
        cry = "CLEFAIRY",

        spriteFront = mod.assets:path("assets/pokemon/generated/clefairy/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/clefairy/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "FAIRY",
            heightFt = 2,
            heightIn = 0,
            weight = 170,
            text = "KEP_DEX_CLEFAIRY",
        },
    })
end
