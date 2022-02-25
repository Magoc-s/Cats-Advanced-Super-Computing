--computing.lua
require("default-vars")
require("default-funcs")
-- computing items
data:extend({
    { -- item subgroup for all computer items.
        type = "item-subgroup",
        name = "computing",
        group = "production",
        order = "g"
    },
    { -- small compute node item
        type        = 'item'
        name        = 'cat:small-compute-node',
        icon        = sprite 'small-compute-node.png',
        icon_size   = 64,
        subgroup    = 'computing',
        order       = 'a1'. -- appear first in g (computing) row.

        place_result = 'cat:small-compute-node-ent',
        stack_size   = 50,
    }
})

-- computing recipes
-- TODO: TO BE BALANCED LATER :D
data:extend({
    {
        type = 'recipe',
        name = 'cat:small-compute-node-rec',
        -- Normal reciple
        normal = {
            enabled     = false,
            ingredients = {
                {'electronic-circuit',  6},
                {'advanced-circuit',    2},
                {'processing-unit',     1},
                {'copper-cable',        10},
                {'iron-plate',          4},
            },

            result          = 'cat:small-compute-node',
            energy_required = 15,
        },
        -- Marathon recipe, pls dont use this.
        expensive = {
            enabled     = false,
            ingredients = {
                {'electronic-circuit',  15},
                {'advanced-circuit',    5},
                {'processing-unit',     2},
                {'green-wire',          8},
                {'red-wire',            8},
                {'iron-plate',          6},
            },

            result          = 'cat:small-compute-node',
            energy_required = 25,
        },

    }
})

-- computing research technologies
-- TODO: Balance this. Probably really bad.
data:extend({
    name = 'cat:small-scale-computing',
    type = 'technology',

    icon      = sprite 'small-scale-computing-technology.png',
    icon_size = 128,

    prerequisites = {"advanced-electronics-2"},

    effects = {
        { type = 'unlock-recipe',
          recipe = 'cat:small-compute-node-rec'
          -- TODO: add remaining small scale computing recipes here :)
        },
    },

    unit = {
        count       = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
        },
        time = 30,
    },
    order = "cat-c1",
})

local small_compute_node_inputs = {
    "compute-coolant-air",
    "compute-network-data",
}
local medium_compute_node_inputs = {
    "compute-coolant-air",
    "compute-coolant-water",
    "compute-network-data",
    "compute-network-packets",
}
local large_compute_node_inputs = {
    "compute-coolant-air",
    "compute-coolant-water",
    "compute-coolant-ln2",
    "compute-network-data",
    "compute-network-packets",
    "compute-network-bulk"
}
-- computing research placable entities
-- TODO everything bruh
data:extend{
    {
        type      = 'lab',
        name      = 'cat:small-compute-node-ent',
        flags     = {'placeable-neutral', 'player-creation'},
        icon      = sprite 'small-compute-node.png',
        icon_size = 64,

        minable = {
            mining_time = 0.5,
            result      = 'cat:small-compute-node'
        }

        max_health = 200,
        corpse     = 'small-remnants',

        collision_box = {{-0.7,-0.7},{0.7,0.7}},
        selection_box = {{-0.7,-1.2},{0.7,0.7}},

        vehicle_impact_sound = base_sounds['generic_impact'],
        open_sound           = base_sounds['machine_open'],
        close_sound          = base_sounds['machine_close'],

        energy_source = {
            type           = "electric",
            usage_priority = "secondary-input"
        },

        energy_usage      = "20kW",
        researching_speed = 1,
        inputs            = small_compute_node_inputs,

        module_specification = {
            module_slots = 3,
            module_info_icon_shift = {0, 0.9}
        }

        --https://github.com/lossycrypt/eradicators-hand-crank-generator/blob/master/data.lua#L275
        circuit_wire_max_distance     = default_circuit_wire_max_distance,
        default_output_signal = {type='item', name='cat:small-compute-node'},
    }
}