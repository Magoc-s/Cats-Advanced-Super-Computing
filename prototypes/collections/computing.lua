--computing.lua
local default_vars  = require("default-vars")
local default_funcs = require("default-funcs")
-- computing items
data:extend({
    { -- item subgroup for all computer items.
        type = "item-subgroup",
        name = "computing",
        group = "production",
        order = "g"
    },
    { -- small compute node item
        type        = 'item',
        name        = default_vars.mod_prefix .. 'small-compute-node',
        icon        = default_funcs.ent_sprite 'small-compute-node.png',
        icon_size   = 64,
        subgroup    = 'computing',
        order       = 'a1', -- appear first in g (computing) row.

        place_result = default_vars.mod_prefix .. 'small-compute-node',
        stack_size   = 50,
    }
})

-- computing recipes
-- TODO: TO BE BALANCED LATER :D
data:extend({
    {
        type = 'recipe',
        name = default_vars.mod_prefix .. 'small-compute-node',
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

            result          = default_vars.mod_prefix .. 'small-compute-node',
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

            result          = default_vars.mod_prefix .. 'small-compute-node',
            energy_required = 25,
        },

    }
})

-- computing research technologies
-- TODO: Balance this. Probably really bad.
data:extend({
    {
        name = default_vars.mod_prefix .. 'small-scale-computing',
        type = 'technology',

        icon      = default_funcs.sprite 'small-scale-computing-technology.png',
        icon_size = 128,

        prerequisites = {"advanced-electronics-2"},

        effects = {
            { type = 'unlock-recipe',
              recipe = default_vars.mod_prefix .. 'small-compute-node',
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
        order = "asc-c1",
    }
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
    "compute-network-bulk",
}
-- computing research placable entities
-- TODO everything bruh
