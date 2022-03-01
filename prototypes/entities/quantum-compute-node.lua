local default_vars    = require("default-vars")
local default_funcs   = require("default-funcs")
local ent_fluid_boxes = require("entity-fluid-boxes")

-- quantum Compute Node
data:extend{
    {
        type      = 'assembling-machine',
        name      = default_vars.mod_prefix .. 'quantum-compute-node',
        flags     = default_vars.default_flags,
        icon      = default_funcs.ent_sprite 'quantum-compute-node.png',
        icon_size = 64,

        minable = {
            mining_time = 0.2,
            result      = default_vars.mod_prefix .. 'quantum-compute-node'
        }

        max_health = 200,
        corpse     = 'small-remnants',

        collision_box = {{-1.2,-1.2},{1.2,1.2}},
        selection_box = {{-1.2,-1.2},{1.2,1.2}},
        fluid_boxes   = ent_fluid_boxes.quantum_compute_node,

        open_sound           = { filename = "__base__/sound/machine-open.ogg",     volume = 0.85 },
        close_sound          = { filename = "__base__/sound/machine-close.ogg",    volume = 0.75 },
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

        energy_source = {type = "electric", usage_priority = "secondary-input"},
        energy_usage  = "1000kW",
        module_specification = {module_slots = 8, module_info_icon_shift = {0, 0.9}}
        -- Limiting usable modules happens in control stage. Factorio engine doesn't allow restricting by mod category! (as of 2019?)
        allowed_effects = {"speed", "productivity", "consumption", "pollution"}

        crafting_speed   = 5
        ingredient_count = 0 -- ingredient_count doesn't include fluids!
        crafting_categories = {"computer-science"}
        --fixed_recipe     = default_vars.mod_prefix .. "compute-data-water"
    }
}