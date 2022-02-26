--crafting-category.lua
local default_vars = require("default-vars")
data:extend({
    {
        type = "recipe-category",
        name = default_vars.mod_prefix .. "compute-units",
        order = "asc:recipe-category-a"
    },
    {
        type = "recipe-category",
        name = default_vars.mod_prefix .. 'computer-science',
        order = "asc:recipe-category-z"
    }
})