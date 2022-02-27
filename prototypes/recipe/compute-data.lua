--compute-data recipe
local default_vars    = require("default-vars")
local default_funcs   = require("default-funcs")

data:extend({
    {   -- Recipe for compute-data produced by small-compute-nodes, input COLD air
        type = 'recipe',
        name = default_vars.mod_prefix .. 'compute-data',
        normal = {
            enabled = false,
            hidden  = true,
            hide_from_player_crafting = true,
            category = 'computer-science',
            main_product = default_vars.mod_prefix .. 'compute-data',
            ingredients = {
                {
                    type = 'fluid', 
                    name = default_vars.mod_prefix .. 'compute-coolant-air',
                    amount = 5, 
                    minimum_temperature = 11, 
                    maximum_temperature = 25, 
                    fluidbox_index = 1
                }
            },
            results = {{type = 'fluid', name = default_vars.mod_prefix .. 'compute-data', amount = 1, fluidbox_index = 2}}
            energy_required = 5,
        },
    },
    {   -- Recipe for compute-data produced by small-compute-nodes, input COLD air
        type = 'recipe',
        name = default_vars.mod_prefix .. 'compute-data-water',
        normal = {
            enabled = false,
            hidden  = true,
            hide_from_player_crafting = true,
            category = 'computer-science',
            main_product = default_vars.mod_prefix .. 'compute-data',
            ingredients = {
                {
                    type = 'fluid', 
                    name = default_vars.mod_prefix .. 'compute-coolant-water',
                    amount = 10, 
                    minimum_temperature = 0, 
                    maximum_temperature = 45, 
                    fluidbox_index = 1,
                    catalyst_amount = 10
                }
            },
            results = {
                {type = 'fluid', name = default_vars.mod_prefix .. 'compute-data', amount = 2, fluidbox_index = 2},
                {type = 'fluid', name = default_vars.mod_prefix .. 'compute-coolant-water', amount = 10, temperature = 65, fluidbox_index = 3, catalyst_amount = 10}
            }
            energy_required = 5,
        },
    }
})

-- {   -- Recipe for compute-data produced by small-compute-nodes, input WARM air
--         type = 'recipe',
--         name = default_vars.mod_prefix .. 'compute-data-warm',
--         normal = {
--             enabled = false,
--             --hidden  = true,
--             hide_from_player_crafting = true,
--             category = 'computer-science',
--             main_product = default_vars.mod_prefix .. 'compute-data',
--             ingredients = {
--                 {
--                     type = 'fluid', 
--                     name = default_vars.mod_prefix .. 'compute-coolant-air',
--                     amount = 5, 
--                     minimum_temperature = 26, 
--                     maximum_temperature = 50, 
--                     fluidbox_index = 1, 
--                     catalyst_amount = 5
--                 }
--             },
--             results = {
--                 {type = 'fluid', name = default_vars.mod_prefix .. 'compute-data', amount = 1, fluidbox_index = 2}
--                 {type = 'fluid', name = default_vars.mod_prefix .. 'compute-coolant-air', amount = 5, temperature = 80, fluidbox_index = 3, catalyst_amount = 5}
--             }
--             energy_required = 7,
--         },
--     }