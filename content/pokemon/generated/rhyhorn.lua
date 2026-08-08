local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local rhyhornChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        frequency = 1700,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 6,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 3,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 3,
                        frequency = 1572,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1552,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 7,
                        frequency = 1537,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        frequency = 1539,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 6,
                        frequency = 1537,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 12,
                        fade = 3,
                        frequency = 1409,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        frequency = 1411,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1410,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1393,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("RHYHORN", {
        chip = rhyhornChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_RHYHORN", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RHYHORN", "While dim, its\nramming is strong\nenough to destroy\nbuildings. Due to\nthis, it isn't a\nvery suitable pet")

    mod.content.pokemon:patch("RHYHORN", {
        name = "RHYHORN",
        dex = 193,

        types = {
            "GROUND",
            "ROCK",
        },

        baseStats = {
            hp = 80,
            attack = 85,
            defense = 95,
            speed = 25,
            special = 30,
        },

        catchRate = 120,
        baseExp = 135,
        growthRate = "SLOW",

        level1Moves = {
            "HORN_ATTACK",
        },

        learnset = {
            { level = 20, move = "STOMP" },
            { level = 25, move = "TAIL_WHIP" },
            { level = 30, move = "FURY_ATTACK" },
            { level = 35, move = "ROCK_SLIDE" },
            { level = 40, move = "HORN_DRILL" },
            { level = 45, move = "LEER" },
            { level = 50, move = "EARTHQUAKE" },
            { level = 55, move = "TAKE_DOWN" },
        },

        evolutions = {
            { method = "LEVEL", level = 42, species = "RHYDON" },
        },

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "QUADRUPED",
        palette = "KEP_RHYHORN",
        cry = "RHYHORN",

        spriteFront = mod.assets:path("assets/pokemon/generated/rhyhorn/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/rhyhorn/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SPIKES",
            heightFt = 3,
            heightIn = 3,
            weight = 2540,
            text = "KEP_DEX_RHYHORN",
        },
    })
end
