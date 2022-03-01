local default_vars    = require("default-vars")
local default_funcs   = require("default-funcs")
local entity_funcs    = require("entity-funcs")
local ent_fluid_boxes = require("entity-fluid-boxes")

-- Small Compute Node
data:extend{
    {
        type      = 'boiler',
        name      = default_vars.mod_prefix .. 'small-swamp-cooler',
        flags     = default_vars.default_flags,
        icon      = default_funcs.ent_sprite 'small-swamp-cooler.png',
        icon_size = 64,

        minable = {
            mining_time = 0.2,
            result      = default_vars.mod_prefix .. 'small-swamp-cooler'
        },

        max_health = 200,
        corpse     = 'small-remnants',

        collision_box = {{-1.2,-1.2},{1.2,1.2}},
        selection_box = {{-1.2,-1.2},{1.2,1.2}},

        fluid_box = ent_fluid_boxes.small_swamp_cooler.fluid_box,
        output_fluid_box = ent_fluid_boxes.small_swamp_cooler.output_fluid_box,

        open_sound           = { filename = "__base__/sound/machine-open.ogg",     volume = 0.85 },
        close_sound          = { filename = "__base__/sound/machine-close.ogg",    volume = 0.75 },
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

        -- Fire animations required for boilers
        fire = {},
        fire_glow = {},
        burning_cooldown = 0,
        structure = {
            north = {
                filename = entity_funcs.asc_entity_graphics "small-swamp-cooler.png",
                width = 50,
                height = 50
            },
            south = {
                filename = entity_funcs.asc_entity_graphics "small-swamp-cooler.png",
                width = 50,
                height = 50
            },
            east = {
                filename = entity_funcs.asc_entity_graphics "small-swamp-cooler.png",
                width = 50,
                height = 50
            },
            west = {
                filename = entity_funcs.asc_entity_graphics "small-swamp-cooler.png",
                width = 50,
                height = 50
            },
        },

        energy_source = {type = "electric", usage_priority = "secondary-input"},
        energy_consumption  = "20kW",
        module_specification = {module_slots = 4, module_info_icon_shift = {0, 0.9}},
        -- Limiting usable modules happens in control stage. Factorio engine doesn't allow restricting by mod category! (as of 2019?)
        allowed_effects = {"speed", "productivity", "consumption", "pollution"},
        target_temperature = 10
    }
}