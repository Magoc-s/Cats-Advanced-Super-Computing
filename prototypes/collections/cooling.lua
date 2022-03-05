-- cooling.lua
local default_vars  = require("default-vars")
local default_funcs = require("default-funcs")

-- cooling items
data:extend({
    { -- item subgroup for all computer items.
        type = "item-subgroup",
        name = "cooling",
        group = "production",
        order = "e"
    },
    { -- small swamp cooler item
        type        = 'item',
        name        = default_vars.mod_prefix .. 'small-swamp-cooler',
        icon        = default_funcs.ent_sprite 'small-swamp-cooler.png',
        icon_size   = 64,
        subgroup    = 'cooling',
        order       = 'a11', -- appear first in g (computing) row.

        place_result = default_vars.mod_prefix .. 'small-swamp-cooler',
        stack_size   = 50,
    },
    { -- small blower cooler item
        type        = 'item',
        name        = default_vars.mod_prefix .. 'small-blower-cooler',
        icon        = default_funcs.ent_sprite 'small-blower-cooler.png',
        icon_size   = 64,
        subgroup    = 'cooling',
        order       = 'a12', -- appear first in g (computing) row.

        place_result = default_vars.mod_prefix .. 'small-blower-cooler',
        stack_size   = 50,
    }
})

-- cooling recipes
-- TODO: TO BE BALANCED LATER :D
data:extend({
    {
        type = 'recipe',
        name = default_vars.mod_prefix .. 'small-swamp-cooler',
        -- Normal reciple
        normal = {
            enabled     = true,
            ingredients = {
                {'pump',                 1},
                {'electric-engine-unit', 1},
                {'iron-gear-wheel',      2},
                {'iron-plate',           6},
            },
            result          = default_vars.mod_prefix .. 'small-swamp-cooler',
            energy_required = 5,
        },
        -- Marathon recipe, pls dont use this.
        expensive = {
            enabled     = false,
            ingredients = {
                {'pump',                 1},
                {'electric-engine-unit', 1},
                {'pipe',                 3},
                {'iron-gear-wheel',      4},
                {'iron-plate',          10},
            },

            result          = default_vars.mod_prefix .. 'small-swamp-cooler',
            energy_required = 10,
        },
    },
    {
        type = 'recipe',
        name = default_vars.mod_prefix .. 'small-blower-cooler',
        -- Normal reciple
        normal = {
            enabled     = true,
            ingredients = {
                {'electric-engine-unit', 1},
                {'iron-gear-wheel',      2},
                {'iron-plate',           6},
            },
            result          = default_vars.mod_prefix .. 'small-blower-cooler',
            energy_required = 3,
        },
        -- Marathon recipe, pls dont use this.
        expensive = {
            enabled     = false,
            ingredients = {
                {'electric-engine-unit', 1},
                {'iron-gear-wheel',      4},
                {'iron-plate',          10},
            },

            result          = default_vars.mod_prefix .. 'small-blower-cooler',
            energy_required = 6,
        },
    }
})