--coolant air recipe
local default_vars    = require("default-vars")
local default_funcs   = require("default-funcs")

data:extend({
    {
        type = 'recipe',
        name = default_vars.mod_prefix .. 'compute-coolant-air-blower',
        normal = {
            enabled = false,
            hidden  = true,
            hide_from_player_crafting = true,
            category = 'computer-cooling',
            main_product = default_vars.mod_prefix .. 'compute-coolant-air',
            ingredients = {},
            results = {
                {type = 'fluid', name = default_vars.mod_prefix .. 'compute-coolant-air', amount = 5, temperature = 22}
            }
            energy_required = 1,
        },
    },
    {
        type = 'recipe',
        name = default_vars.mod_prefix .. 'compute-coolant-air-swamp',
        normal = {
            enabled = false,
            hidden  = true,
            hide_from_player_crafting = true,
            category = 'computer-cooling',
            main_product = default_vars.mod_prefix .. 'compute-coolant-air',
            ingredients = {{
                type = 'fluid', 
                name = 'water',
                amount = 100, 
                minimum_temperature = 11, 
                maximum_temperature = 25, 
                fluidbox_index = 2, 
                catalyst_amount = 100
            }},
            results = {
                {type = 'fluid', name = default_vars.mod_prefix .. 'compute-coolant-air', amount = 10, temperature = 16, fluidbox_index = 1},
                {type = 'fluid', name = 'water', amount = 100, temperature = 45, catalyst_amount = 100, fluidbox_index = 3}
            }
            energy_required = 1,
        },
    },
    {
        type = 'recipe',
        name = default_vars.mod_prefix .. 'compute-coolant-air-condenser',
        normal = {
            enabled = false,
            hidden  = true,
            hide_from_player_crafting = true,
            category = 'computer-cooling',
            main_product = default_vars.mod_prefix .. 'compute-coolant-air',
            ingredients = {},
            results = {
                {type = 'fluid', name = default_vars.mod_prefix .. 'compute-coolant-air', amount = 15, temperature = 12, fluidbox_index = 1}
            }
            energy_required = 1,
        },
    }
})