local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local battle37Chip = ChipAsm.sfx({
        engine = 2,
        channels = {
            {
                hw = 1,
                program = {
                    { executeMusic = true },
                    { vibrato = { delay = 10, depth = 2, rate = 4 } },
                    { duty = 2 },
                    { notetype = { speed = 10, volume = 8, fade = 7 } },
                    { octave = 5 },
                    { note = "G#", len = 8 },
                    { octave = 6 },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { executeMusic = true },
                    { vibrato = { delay = 10, depth = 2, rate = 3 } },
                    { duty = 2 },
                    { notetype = { speed = 11, volume = 6, fade = 7 } },
                    { octave = 5 },
                    { note = "G#", len = 8 },
                    { notetype = { speed = 10, volume = 6, fade = 7 } },
                    { octave = 6 },
                    { ret = true },
                },
            },
        },
    })

    mod.content.sfx:register("Battle_37", {
        chip = battle37Chip.chip,
    })

    mod.content.battle_anims:register("subanim:86", {
        type = "COORDFLIP",
        blocks = {
            { block = 18, coord = 113, mode = 0 },
            { block = 18, coord = 114, mode = 0 },
            { block = 18, coord = 115, mode = 0 },
            { block = 20, coord = 152, mode = 2 },
            { block = 21, coord = 152, mode = 0 },
            { block = 21, coord = 152, mode = 0 },
            { block = 22, coord = 152, mode = 0 },
            { block = 22, coord = 152, mode = 0 },
        },
    })

    mod.content.battle_anims:register("subanim:87", {
        type = "HFLIP",
        blocks = {
            { block = 1, coord = 29, mode = 0 },
            { block = 1, coord = 24, mode = 0 },
            { block = 1, coord = 17, mode = 0 },
            { block = 1, coord = 11, mode = 0 },
        },
    })

    mod.content.battle_anims:register("subanim:88", {
        type = "COORDFLIP",
        blocks = {
            { block = 82, coord = 114, mode = 0 },
            { block = 82, coord = 119, mode = 0 },
        },
    })

    mod.content.battle_anims:register("subanim:89", {
        type = "HVFLIP",
        blocks = {
            { block = 57, coord = 114, mode = 0 },
            { block = 56, coord = 114, mode = 0 },
        },
    })

    mod.content.battle_anims:register("subanim:90", {
        type = "NORMAL",
        blocks = {
            { block = 82, coord = 1, mode = 0 },
            { block = 82, coord = 0, mode = 0 },
        },
    })

    mod.content.battle_anims:register("subanim:91", {
        type = "NORMAL",
        blocks = {
            { block = 57, coord = 1, mode = 0 },
            { block = 56, coord = 1, mode = 0 },
        },
    })

    mod.content.moves:patch("FAIRY_WIND", {
        anim = {
            sound = "Battle_12",
            pitch = 0x00,
            tempo = 0xc0,
        },
    })

    mod.content.battle_anims:register("FAIRY_WIND", {
        seq = {
            { subanim = 16, tileset = 1, delay = 6, sound = "WHIRLWIND" },
        },
    })

    mod.content.moves:patch("DRAININGKISS", {
        anim = {
            sound = "Battle_24",
            pitch = 0x00,
            tempo = 0x80,
        },
    })

    mod.content.battle_anims:register("DRAININGKISS", {
        seq = {
            { subanim = 18, tileset = 0, delay = 6, sound = "LOVELY_KISS" },
            { effect = "SE_LIGHT_SCREEN_PALETTE", sound = "ABSORB" },
            { subanim = 33, tileset = 0, delay = 6 },
            { subanim = 34, tileset = 0, delay = 6 },
            { effect = "SE_RESET_SCREEN_PALETTE" },
        },
    })

    mod.content.moves:patch("METAL_SOUND", {
        anim = {
            sound = "Battle_31",
            pitch = 0x00,
            tempo = 0x80,
        },
    })

    mod.content.battle_anims:register("METAL_SOUND", {
        seq = {
            { subanim = 18, tileset = 1, delay = 6, sound = "SCREECH" },
        },
    })

    mod.content.moves:patch("MAGNET_BOMB", {
        anim = {
            sound = "Battle_34",
            pitch = 0x00,
            tempo = 0x40,
        },
    })

    mod.content.battle_anims:register("MAGNET_BOMB", {
        seq = {
            { subanim = 65, tileset = 1, delay = 4, sound = "BARRAGE" },
            { subanim = 66, tileset = 1, delay = 4, sound = "EGG_BOMB" },
            { effect = "SE_DARK_SCREEN_FLASH" },
        },
    })

    mod.content.moves:patch("IRON_DEFENSE", {
        anim = {
            sound = "Battle_14",
            pitch = 0x11,
            tempo = 0x20,
        },
    })

    mod.content.battle_anims:register("IRON_DEFENSE", {
        seq = {
            { effect = "SE_LIGHT_SCREEN_PALETTE", sound = "HARDEN" },
            { subanim = 67, tileset = 1, delay = 6 },
            { effect = "SE_DARK_SCREEN_FLASH" },
            { effect = "SE_RESET_SCREEN_PALETTE" },
        },
    })

    mod.content.moves:patch("DAZZLE_GLEAM", {
        anim = {
            sound = "Battle_13",
            pitch = 0xf8,
            tempo = 0xff,
        },
    })

    mod.content.battle_anims:register("DAZZLE_GLEAM", {
        seq = {
            { effect = "SE_DARK_SCREEN_FLASH", sound = "GLARE" },
            { effect = "SE_LIGHT_SCREEN_PALETTE" },
            { effect = "SE_DELAY_ANIMATION_10" },
            { effect = "SE_WAVY_SCREEN", sound = "DOUBLE_TEAM" },
            { effect = "SE_RESET_SCREEN_PALETTE" },
        },
    })

    mod.content.moves:patch("NIGHT_SLASH", {
        anim = {
            sound = "Battle_0F",
            pitch = 0x00,
            tempo = 0x80,
        },
    })

    mod.content.battle_anims:register("NIGHT_SLASH", {
        seq = {
            { effect = "SE_DARK_SCREEN_PALETTE" },
            { subanim = 15, tileset = 0, delay = 6, sound = "SLASH" },
            { effect = "SE_DARK_SCREEN_FLASH" },
            { effect = "SE_RESET_SCREEN_PALETTE" },
        },
    })

    mod.content.moves:patch("FEINT_ATTACK", {
        anim = {
            sound = "Battle_25",
            pitch = 0x00,
            tempo = 0x10,
        },
    })

    mod.content.battle_anims:register("FEINT_ATTACK", {
        seq = {
            { effect = "SE_SLIDE_MON_OFF", sound = "QUICK_ATTACK" },
            { subanim = 4, tileset = 1, delay = 6 },
            { effect = "SE_SHOW_MON_PIC" },
        },
    })

    mod.content.moves:patch("IRON_HEAD", {
        anim = {
            sound = "Super_Effective",
            pitch = 0x20,
            tempo = 0xc0,
        },
    })

    mod.content.battle_anims:register("IRON_HEAD", {
        seq = {
            { effect = "SE_LIGHT_SCREEN_PALETTE", sound = "FLASH" },
            { subanim = 45, tileset = 0, delay = 6 },
            { effect = "SE_RESET_SCREEN_PALETTE" },
            { effect = "SE_MOVE_MON_HORIZONTALLY" },
            { effect = "SE_DARK_SCREEN_FLASH", sound = "DOUBLE_EDGE" },
            { effect = "SE_RESET_MON_POSITION" },
        },
    })

    mod.content.moves:patch("BRUTAL_SWING", {
        anim = {
            sound = "Battle_23",
            pitch = 0x01,
            tempo = 0xc0,
        },
    })

    mod.content.battle_anims:register("BRUTAL_SWING", {
        seq = {
            { effect = "SE_SLIDE_MON_OFF", sound = "SUBMISSION" },
            { subanim = 1, tileset = 0, delay = 6 },
            { effect = "SE_SHOW_MON_PIC" },
        },
    })

    mod.content.moves:patch("CHARM", {
        anim = {
            sound = "Battle_09",
            pitch = 0x88,
            tempo = 0x10,
        },
    })

    mod.content.battle_anims:register("CHARM", {
        seq = {
            { subanim = 18, tileset = 0, delay = 6, sound = "LOVELY_KISS" },
        },
    })

    mod.content.moves:patch("SWEET_KISS", {
        anim = {
            sound = "Battle_09",
            pitch = 0x88,
            tempo = 0x10,
        },
    })

    mod.content.battle_anims:register("SWEET_KISS", {
        seq = {
            { subanim = 18, tileset = 0, delay = 6, sound = "LOVELY_KISS" },
        },
    })

    mod.content.moves:patch("BULLET_PUNCH", {
        anim = {
            sound = "Battle_0B",
            pitch = 0x01,
            tempo = 0x80,
        },
    })

    mod.content.battle_anims:register("BULLET_PUNCH", {
        seq = {
            { subanim = 2, tileset = 0, delay = 4, sound = "COMET_PUNCH" },
            { subanim = 2, tileset = 0, delay = 4, sound = "COMET_PUNCH" },
        },
    })

    mod.content.moves:patch("MIRROR_SHOT", {
        anim = {
            sound = "Battle_29",
            pitch = 0xe8,
            tempo = 0xff,
        },
    })

    mod.content.battle_anims:register("MIRROR_SHOT", {
        seq = {
            { effect = "SE_DARK_SCREEN_FLASH", sound = "TRI_ATTACK" },
            { subanim = 77, tileset = 1, delay = 6 },
            { effect = "SE_DARK_SCREEN_FLASH" },
            { subanim = 77, tileset = 1, delay = 6, sound = "TRI_ATTACK" },
            { subanim = 14, tileset = 1, delay = 4, sound = "FLAMETHROWER" },
            { effect = "SE_LIGHT_SCREEN_PALETTE" },
            { subanim = 47, tileset = 0, delay = 2, sound = "PAY_DAY" },
            { effect = "SE_RESET_SCREEN_PALETTE" },
            { effect = "SE_DARK_SCREEN_PALETTE" },
            { subanim = 43, tileset = 1, delay = 4, sound = "THUNDER" },
            { effect = "SE_RESET_SCREEN_PALETTE" },
        },
    })

    mod.content.moves:patch("SMART_STRIKE", {
        anim = {
            sound = "Not_Very_Effective",
            pitch = 0x09,
            tempo = 0xff,
        },
    })

    mod.content.battle_anims:register("SMART_STRIKE", {
        seq = {
            { effect = "SE_DARK_SCREEN_FLASH", sound = "GLARE" },
            { effect = "SE_RESET_SCREEN_PALETTE" },
            { subanim = 69, tileset = 0, delay = 6, sound = "SLASH" },
            { subanim = 5, tileset = 1, delay = 6 },
        },
    })

    mod.content.moves:patch("FAKE_TEARS", {
        anim = {
            sound = "Battle_0B",
            pitch = 0x00,
            tempo = 0xc0,
        },
    })

    mod.content.battle_anims:register("FAKE_TEARS", {
        seq = {
            { effect = "SE_MOVE_MON_HORIZONTALLY", sound = "AMNESIA" },
            { effect = "SE_DELAY_ANIMATION_10" },
            { effect = "SE_RESET_MON_POSITION" },
            { effect = "SE_DELAY_ANIMATION_10" },
            { effect = "SE_MOVE_MON_HORIZONTALLY", sound = "AMNESIA" },
            { effect = "SE_DELAY_ANIMATION_10" },
            { effect = "SE_RESET_MON_POSITION" },
            { subanim = 21, tileset = 1, delay = 6, sound = "ROAR" },
            { subanim = 21, tileset = 1, delay = 6 },
            { effect = "SE_DARKEN_MON_PALETTE" },
            { effect = "SE_SHAKE_ENEMY_HUD" },
            { effect = "SE_RESET_SCREEN_PALETTE" },
        },
    })

    mod.content.moves:patch("FALSE_SURRENDER", {
        anim = {
            sound = "Battle_20",
            pitch = 0x00,
            tempo = 0x60,
        },
    })

    mod.content.battle_anims:register("FALSE_SURRENDER", {
        seq = {
            { effect = "SE_SLIDE_MON_OFF", sound = "SUBSTITUTE" },
            { subanim = 71, tileset = 0, delay = 8 },
            { effect = "SE_RESET_MON_POSITION", sound = "AMNESIA" },
            { effect = "SE_DARK_SCREEN_FLASH", sound = "TAKE_DOWN" },
        },
    })

    mod.content.moves:patch("KOWTOW_CLEAVE", {
        anim = {
            sound = "Not_Very_Effective",
            pitch = 0x11,
            tempo = 0xff,
        },
    })

    mod.content.battle_anims:register("KOWTOW_CLEAVE", {
        seq = {
            { effect = "SE_DARK_SCREEN_PALETTE" },
            { subanim = 15, tileset = 0, delay = 6, sound = "SLASH" },
            { effect = "SE_DARK_SCREEN_FLASH" },
            { effect = "SE_RESET_SCREEN_PALETTE" },
        },
    })

    mod.content.moves:patch("DISARMING_VOICE", {
        anim = {
            sound = "Battle_37",
            pitch = 0x10,
            tempo = 0x60,
        },
    })

    mod.content.battle_anims:register("DISARMING_VOICE", {
        seq = {
            { subanim = 18, tileset = 1, delay = 6, sound = "DISARMING_VOICE" },
        },
    })

    mod.content.moves:patch("NASTY_PLOT", {
        anim = {
            sound = "Battle_09",
            pitch = 0xe8,
            tempo = 0x10,
        },
    })

    mod.content.battle_anims:register("NASTY_PLOT", {
        seq = {
            { subanim = 89, tileset = 1, delay = 2, sound = "MEGA_DRAIN" },
            { subanim = 88, tileset = 0, delay = 16, sound = "KINESIS" },
            { effect = "SE_SHOOT_MANY_BALLS_UPWARD", sound = "DOUBLE_TEAM" },
        },
    })

    mod.content.moves:patch("UPPERCUT", {
        anim = {
            sound = "Super_Effective",
            pitch = 0x00,
            tempo = 0xe0,
        },
    })

    mod.content.battle_anims:register("UPPERCUT", {
        seq = {
            { subanim = 87, tileset = 0, delay = 8, sound = "UPPERCUT" },
        },
    })

    mod.content.moves:patch("POWDER_SNOW", {
        anim = {
            sound = "Battle_28",
            pitch = 0x40,
            tempo = 0x80,
        },
    })

    mod.content.battle_anims:register("POWDER_SNOW", {
        seq = {
            { subanim = 54, tileset = 0, delay = 6, sound = "LEECH_SEED" },
            { subanim = 47, tileset = 0, delay = 16, sound = "ROCK_THROW" },
        },
    })

end
