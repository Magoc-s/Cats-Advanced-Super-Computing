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
            enabled     = false,
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

data:extend({
    {
        type      = 'offshore-pump',
        name      = default_vars.mod_prefix .. 'small-blower-cooler',
        flags     = {'placeable-neutral', 'player-creation'},
        icon      = default_funcs.ent_sprite 'small-blower-cooler.png',
        icon_size = 64,
        collision_mask = { "object-layer", "train-layer" }, -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
        center_collision_mask = { "water-tile", "object-layer", "player-layer" }, -- to test that tile directly under the pump is ground
    
        minable = {
            mining_time = 0.1,
            result      = default_vars.mod_prefix .. 'small-blower-cooler'
        },

        max_health = 200,
        corpse     = 'small-remnants',
        fluid      = default_vars.mod_prefix .. 'compute-coolant-air',

        fluid_box = {
            base_area = 1,
            base_level = 1,
            pipe_covers = default_funcs.ventcoverspictures(),
            production_type = "output",
            filter = "compute-coolant-air",
            pipe_connections =
            {
                {position = {0, 1}, type = "output"},
                {position = {0, -1},type = "output"},
                {position = {1, 0}, type = "output"},
                {position = {-1, 0},type = "output"}
            }
        },
        collision_box = {{-0.4,-0.4},{0.4,0.4}},
        selection_box = {{-0.4,-0.4},{0.4,0.4}},

        -- vehicle_impact_sound = base_sounds['generic_impact'],
        -- open_sound           = base_sounds['machine_open'],
        -- close_sound          = base_sounds['machine_close'],

        pumping_speed = 1,
        tile_width = 1,
        tile_height = 1,

        energy_source = {
            type           = "electric",
            usage_priority = "secondary-input"
        },

        energy_usage      = "5kW",
        graphics_set = {
            animation = {
                filename = "__advanced-super-computing__/graphics/entity/small-blower-cooler.png",
                width    = 50,
                height   = 50
            }
        }
    }
})