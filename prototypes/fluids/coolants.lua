-- coolants.lua
local default_vars  = require("default-vars")
local default_funcs = require("default-funcs")

data:extend({
    {
        type = "fluid",
        name = default_vars.mod_prefix .. "compute-coolant-air",
        default_temperature = 10,
        max_temperature = 105,
        heat_capacity = "0.1KJ",
        base_color = {r=0.9, g=0.9, b=0.9},
        flow_color = {r=0.8, g=0.9, b=1.0},
        icon = default_funcs.sprite 'compute-coolant-air.png',
        icon_size = 64, icon_mipmaps = 4,
        order = "cat[fluid]-air",
        auto_barrel = false
    },
    {
        type = "fluid",
        name = default_vars.mod_prefix .. "compute-coolant-water",
        default_temperature = 22,
        max_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = {r=0, g=0.34, b=0.6},
        flow_color = {r=0.7, g=0.7, b=0.7},
        icon = default_funcs.sprite 'compute-coolant-water.png',
        icon_size = 64, icon_mipmaps = 4,
        order = "cat[fluid]-water",
        auto_barrel = false
    },
    {
        type = "fluid",
        name = default_vars.mod_prefix .. "compute-coolant-ln2",
        default_temperature = -200,
        max_temperature = 0,
        heat_capacity = "0.8KJ",
        --TODO: fix colours of ln2 coolant
        base_color = {r=0, g=0.34, b=0.6},
        flow_color = {r=0.7, g=0.7, b=0.7},
        icon = default_funcs.sprite 'compute-coolant-ln2.png',
        icon_size = 64, icon_mipmaps = 4,
        order = "cat[fluid]-water",
        auto_barrel = false
    },
})