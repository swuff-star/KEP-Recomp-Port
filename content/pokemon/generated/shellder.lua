local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local shellderChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 1, 1, 0, 0 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 5,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1696,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 5,
                        frequency = 1585,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1618,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1649,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1681,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1714,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1681,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1649,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1617,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 3,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 44,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("SHELLDER", {
        chip = shellderChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_SHELLDER", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SHELLDER", "Encased in a shell\nthat is harder\nthan diamond. The\nbody inside the\nshell, however,\nis very tender")

    mod.content.pokemon:patch("SHELLDER", {
        name = "SHELLDER",
        dex = 182,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 30,
            attack = 65,
            defense = 100,
            speed = 40,
            special = 45,
        },

        catchRate = 190,
        baseExp = 97,
        growthRate = "SLOW",

        level1Moves = {
            "TACKLE",
            "WITHDRAW",
        },

        learnset = {
            { level = 10, move = "BIDE" },
            { level = 18, move = "SUPERSONIC" },
            { level = 23, move = "CLAMP" },
            { level = 30, move = "AURORA_BEAM" },
            { level = 39, move = "LEER" },
            { level = 50, move = "ICE_BEAM" },
        },

        evolutions = {
            { method = "ITEM", item = "WATER_STONE", species = "DISTURBAN" },
            { method = "ITEM", item = "ICE_STONE", species = "CLOYSTER" },
        },

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SELFDESTRUCT",
            "SWIFT",
            "REST",
            "EXPLOSION",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "HELIX",
        palette = "KEP_SHELLDER",
        cry = "SHELLDER",

        spriteFront = mod.assets:path("assets/pokemon/generated/shellder/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/shellder/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "BIVALVE",
            heightFt = 1,
            heightIn = 0,
            weight = 90,
            text = "KEP_DEX_SHELLDER",
        },
    })
end
