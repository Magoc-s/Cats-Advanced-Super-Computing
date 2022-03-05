local default_vars    = require("default-vars")
local default_funcs   = require("default-funcs")
local entity_funcs    = require("entity-funcs")
local ent_fluid_boxes = require("entity-fluid-boxes")

-- Small blower cooler
data:extend({
  {
    type      = 'assembling-machine',
    name      = default_vars.mod_prefix .. 'small-blower-cooler',
    flags     = default_vars.default_flags,
    icon      = default_funcs.ent_sprite 'small-blower-cooler.png',
    icon_size = 64,

    minable = {
        mining_time = 0.2,
        result      = default_vars.mod_prefix .. 'small-blower-cooler'
    },

    max_health = 200,
    corpse     = 'small-remnants',

    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},

    fluid_boxes = ent_fluid_boxes.small_blower_cooler,

    open_sound           = { filename = "__base__/sound/machine-open.ogg",     volume = 0.85 },
    close_sound          = { filename = "__base__/sound/machine-close.ogg",    volume = 0.75 },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    idle_animation = {
        filename = entity_funcs.asc_entity_graphics "small-blower-cooler.png",
        width = 50,
        height = 50
    },
    always_draw_idle_animation = true,

    energy_source = {type = "electric", usage_priority = "secondary-input"},
    energy_usage  = "5kW",
    module_specification = {module_slots = 0, module_info_icon_shift = {0, 0.9}},
    -- Limiting usable modules happens in control stage. Factorio engine doesn't allow restricting by mod category! (as of 2019?)
    allowed_effects = {},
    crafting_speed = 1,
    crafting_categories = {default_vars.mod_prefix .. "computer-cooling"},
    fixed_recipe = default_vars.mod_prefix .. "compute-coolant-air-blower"
  }
})