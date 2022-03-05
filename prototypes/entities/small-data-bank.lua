local default_vars    = require("default-vars")
local default_funcs   = require("default-funcs")
local ent_fluid_boxes = require("entity-fluid-boxes")

data:extend{
    {
        type = "storage-tank",
        name = default_vars.mod_prefix .. "small-data-bank",
        icon = default_funcs.ent_sprite 'small-data-bank.png',
        icon_size = 64, icon_mipmaps = 4,
        flags = default_vars.default_flags,
        minable = {mining_time = 0.5, result = default_vars.mod_prefix .. "small-data-bank"},
        max_health = 500,
        corpse = "small-remnants",
        dying_explosion = "storage-tank-explosion",
        collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = ent_fluid_boxes.small_data_bank,
        two_direction_only = true,
        window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}}, --TODO: fix this lol
        pictures =
        {
        picture =
        {
            sheets =
            {
            {
                filename = default_funcs.ent_graphic 'small-data-bank/small-data-bank.png',
                priority = "extra-high",
                frames = 2,
                width = 110,
                height = 108,
                shift = util.by_pixel(0, 4),
                hr_version =
                {
                    filename = default_funcs.ent_graphic 'small-data-bank/hr-small-data-bank.png',
                    priority = "extra-high",
                    frames = 2,
                    width = 219,
                    height = 215,
                    shift = util.by_pixel(-0.25, 3.75),
                    scale = 0.5
                }
            },
            {
                filename = default_funcs.ent_graphic "small-data-bank/small-data-bank-shadow.png",
                priority = "extra-high",
                frames = 2,
                width = 146,
                height = 77,
                shift = util.by_pixel(30, 22.5),
                draw_as_shadow = true,
                hr_version =
                {
                    filename = default_funcs.ent_graphic "small-data-bank/hr-small-data-bank-shadow.png",
                    priority = "extra-high",
                    frames = 2,
                    width = 291,
                    height = 153,
                    shift = util.by_pixel(29.75, 22.25),
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
            }
        },
        fluid_background =
        {
            filename = default_funcs.ent_graphic "small-data-bank/fluid-background.png",
            priority = "extra-high",
            width = 32,
            height = 15
        },
        window_background =
        {
            filename = default_funcs.ent_graphic "small-data-bank/window-background.png",
            priority = "extra-high",
            width = 17,
            height = 24,
            hr_version =
            {
            filename = default_funcs.ent_graphic "small-data-bank/hr-window-background.png",
            priority = "extra-high",
            width = 34,
            height = 48,
            scale = 0.5
            }
        },
        flow_sprite =
        {
            filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
            priority = "extra-high",
            width = 160,
            height = 20
        },
        gas_flow =
        {
            filename = "__base__/graphics/entity/pipe/steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 24,
            height = 15,
            frame_count = 60,
            axially_symmetrical = false,
            direction_count = 1,
            animation_speed = 0.25,
            hr_version =
            {
            filename = "__base__/graphics/entity/pipe/hr-steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 48,
            height = 30,
            frame_count = 60,
            axially_symmetrical = false,
            animation_speed = 0.25,
            direction_count = 1,
            scale = 0.5
            }
        }
        },
        flow_length_in_ticks = 360,
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
        sound =
        {
            filename = default_funcs.sound "small-data-bank.ogg",
            volume = 0.4
        },
        match_volume_to_activity = true,
        audible_distance_modifier = 0.4,
        max_sounds_per_type = 3
        },

        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
        circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        water_reflection =
        {
        pictures =
        {
            filename = default_funcs.ent_graphic "small-data-bank/small-data-bank-reflection.png",
            priority = "extra-high",
            width = 24,
            height = 24,
            shift = util.by_pixel(5, 35),
            variation_count = 1,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = false
        }
    }
}