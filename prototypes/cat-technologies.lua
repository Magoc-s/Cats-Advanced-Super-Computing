-- cat-technologies.lua
require("default-vars")
require("default-funcs")

-- all advanced super computing technologies.
-- TODO: Balance this. Probably really bad.
data:extend({
    name = 'cat:small-scale-computing',
    type = 'technology',

    icon      = sprite 'small-scale-computing-technology.png',
    icon_size = 128,

    prerequisites = {"advanced-electronics-2"},
    -- TODO: add remaining small scale computing recipes here :)
    effects = {
        { type = 'unlock-recipe',
          recipe = 'cat:small-compute-node-rec'
        },
        { type = 'unlock-recipe',
            recipe = 'cat:small-swamp-cooler-rec'
        },
        { type = 'unlock-recipe',
            recipe = 'cat:small-blower-cooler-rec'
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