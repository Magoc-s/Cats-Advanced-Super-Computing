-- cooling.lua
require("default-vars")
require("default-funcs")

-- cooling items
data:extend({
    { -- item subgroup for all computer items.
        type = "item-subgroup",
        name = "cooling",
        group = "production",
        order = "e"
    },
    { -- small compute node item
        type        = 'item'
        name        = 'cat:small-swamp-cooler',
        icon        = sprite 'small-swamp-cooler.png',
        icon_size   = 64,
        subgroup    = 'cooling',
        order       = 'a11'. -- appear first in g (computing) row.

        place_result = 'cat:small-swamp-cooler-ent',
        stack_size   = 50,
    }
    { -- small compute node item
        type        = 'item'
        name        = 'cat:small-blower-cooler',
        icon        = sprite 'small-blower-cooler.png',
        icon_size   = 64,
        subgroup    = 'cooling',
        order       = 'a12'. -- appear first in g (computing) row.

        place_result = 'cat:small-blower-cooler-ent',
        stack_size   = 50,
    }
})

-- cooling recipes
-- TODO: TO BE BALANCED LATER :D
data:extend({
    {
        type = 'recipe',
        name = 'cat:small-swamp-cooler-rec',
        -- Normal reciple
        normal = {
            enabled     = false,
            ingredients = {
                {'pump',                 1},
                {'electric-engine-unit', 1},
                {'iron-gear-wheel',      2},
                {'iron-plate',           6},
            },
            result          = 'cat:small-swamp-cooler',
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

            result          = 'cat:small-swamp-cooler',
            energy_required = 10,
        },
    }
    {
        type = 'recipe',
        name = 'cat:small-blower-cooler-rec',
        -- Normal reciple
        normal = {
            enabled     = false,
            ingredients = {
                {'electric-engine-unit', 1},
                {'iron-gear-wheel',      2},
                {'iron-plate',           6},
            },
            result          = 'cat:small-blower-cooler',
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

            result          = 'cat:small-blower-cooler',
            energy_required = 6,
        },
    }
})

data:extend{
    {
        type      = 'offshore-pump',
        name      = 'cat:small-swamp-cooler-ent',
        flags     = {'placeable-neutral', 'player-creation'},
        icon      = sprite 'small-swamp-cooler.png',
        icon_size = 64,
        collision_mask = { "object-layer", "train-layer" }, -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
        center_collision_mask = { "water-tile", "object-layer", "player-layer" }, -- to test that tile directly under the pump is ground
    
        minable = {
            mining_time = 0.1,
            result      = 'cat:small-swamp-cooler'
        }

        max_health = 200,
        corpse     = 'small-remnants',
        fluid      = 'compute-coolant-air',

        -- ADD fluid_box
        -- fluid_box = {
        --     base_area = 1,
        --     base_level = 1,
        --     pipe_covers = pipecoverspictures(),
        --     production_type = "output",
        --     filter = "water",
        --     pipe_connections =
        --     {
        --         {
        --         position = {0, 1},
        --         type = "output"
        --         }
        --     }
        -- },
        collision_box = {{-0.4,-0.4},{0.4,0.4}},
        selection_box = {{-0.4,-0.4},{0.4,0.4}},

        vehicle_impact_sound = base_sounds['generic_impact'],
        open_sound           = base_sounds['machine_open'],
        close_sound          = base_sounds['machine_close'],

        pumping_speed = 1,
        tile_width = 1,
        tile_height = 1,

        energy_source = {
            type           = "electric",
            usage_priority = "secondary-input"
        },

        energy_usage      = "5kW",
    }
}