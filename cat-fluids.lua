-- cat-fluids.lua
require("default-vars")
require("default-funcs")

data:extend({
    {
        type = "fluid",
        name = "compute-coolant-air",
        default_temperature = 21,
        max_temperature = 105,
        heat_capacity = "0.1KJ",
        base_color = {r=0.9, g=0.9, b=0.9},
        flow_color = {r=0.8, g=0.9, b=1.0},
        icon = sprite 'compute-coolant-air.png',
        icon_size = 64, icon_mipmaps = 4,
        order = "cat[fluid]-air"
      },
})