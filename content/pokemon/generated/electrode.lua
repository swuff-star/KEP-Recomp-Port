local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local electrodeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 3,
                        frequency = 751,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 6,
                        fade = 2,
                        frequency = 718,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 5,
                        fade = 2,
                        frequency = 749,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 6,
                        fade = 3,
                        frequency = 686,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 2,
                        frequency = 717,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 4,
                        fade = 2,
                        frequency = 687,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 4,
                        parameter = 52,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 2,
                        parameter = 68,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 6,
                        parameter = 52,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 84,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 68,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 84,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ELECTRODE", {
        chip = electrodeChip.chip,
        pitch = 0,
        length = 144,
    })

    mod.content.palettes:register("KEP_ELECTRODE", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ELECTRODE", "A feared POKéMON\nthat explodes in\nresponse to even\nminor stimuli. It\nhas been called\nthe Bomb Ball")

    mod.content.pokemon:patch("ELECTRODE", {
        name = "ELECTRODE",
        dex = 130,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 60,
            attack = 50,
            defense = 70,
            speed = 140,
            special = 80,
        },

        catchRate = 60,
        baseExp = 150,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "SCREECH",
            "SONICBOOM",
        },

        learnset = {
            { level = 17, move = "SONICBOOM" },
            { level = 22, move = "SELFDESTRUCT" },
            { level = 29, move = "LIGHT_SCREEN" },
            { level = 40, move = "SWIFT" },
            { level = 50, move = "EXPLOSION" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SELFDESTRUCT",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "EXPLOSION",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "BALL",
        palette = "KEP_ELECTRODE",
        cry = "ELECTRODE",

        spriteFront = mod.assets:path("assets/pokemon/generated/electrode/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/electrode/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "BALL",
            heightFt = 3,
            heightIn = 11,
            weight = 1470,
            text = "KEP_DEX_ELECTRODE",
        },
    })
end
