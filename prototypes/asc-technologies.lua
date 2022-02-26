-- cat-technologies.lua
require("default-vars")
require("default-funcs")
local tech_collections = require("asc-technologies-collections")

-- all advanced super computing technologies.
-- TODO: Balance this. Probably really bad.
data:extend({
    name = 'cat:small-scale-computing',
    type = 'technology',

    icon      = sprite 'small-scale-computing-technology.png',
    icon_size = 128,

    prerequisites = {"advanced-electronics-2"},
    -- TODO: add remaining small scale computing recipes here :)
    effects = tech_collections.small_scale_computing_unlocks()
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