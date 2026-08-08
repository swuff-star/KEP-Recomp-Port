local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local slowpokeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 0, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 5,
                        frequency = 1152,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 1,
                        frequency = 1504,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1500,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 9,
                        fade = 5,
                        frequency = 1089,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 8,
                        fade = 1,
                        frequency = 1313,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1306,
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

    mod.content.cries:override("SLOWPOKE", {
        chip = slowpokeChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_SLOWPOKE", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SLOWPOKE", "While some people\nbecome relaxed\naround SLOWPOKE,\nothers may become\nirritated by its\ndim, vacant look")

    mod.content.pokemon:patch("SLOWPOKE", {
        name = "SLOWPOKE",
        dex = 145,

        types = {
            "WATER",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 90,
            attack = 65,
            defense = 65,
            speed = 15,
            special = 40,
        },

        catchRate = 190,
        baseExp = 99,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONFUSION",
        },

        learnset = {
            { level = 10, move = "BIDE" },
            { level = 18, move = "DISABLE" },
            { level = 22, move = "HEADBUTT" },
            { level = 27, move = "GROWL" },
            { level = 33, move = "WATER_GUN" },
            { level = 40, move = "AMNESIA" },
            { level = 48, move = "PSYCHIC_M" },
        },

        evolutions = {
            { method = "ITEM", item = "HEART_STONE", species = "SLOWKING" },
            { method = "LEVEL", level = 37, species = "SLOWBRO" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "PAY_DAY",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
            "FLASH",
        },

        icon = "QUADRUPED",
        palette = "KEP_SLOWPOKE",
        cry = "SLOWPOKE",

        spriteFront = mod.assets:path("assets/pokemon/generated/slowpoke/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/slowpoke/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "DOPEY",
            heightFt = 3,
            heightIn = 11,
            weight = 790,
            text = "KEP_DEX_SLOWPOKE",
        },
    })
end
