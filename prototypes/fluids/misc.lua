-- misc.lua (for other 'fluids')

data:extend({
    {
        type = "fluid",
        name = "compute-data",
        default_temperature = 32,
        max_temperature = 64,
        heat_capacity = "0.1KJ",
        base_color = {r=0, g=0.34, b=0.6},
        flow_color = {r=0.7, g=0.7, b=0.7},
        icon = sprite 'compute-data.png',
        icon_size = 64, icon_mipmaps = 4,
        order = "asc[misc-fluids]-compute-data",
        auto_barrel = false
    },
    {
        type = "fluid",
        name = "atmospheric-nitrogen",
        default_temperature = 22,
        max_temperature = 80,
        heat_capacity = "0.6KJ",
        base_color = {r=0, g=0.34, b=0.6},
        flow_color = {r=0.7, g=0.7, b=0.7},
        icon = sprite 'atmospheric-nitrogen',
        icon_size = 64, icon_mipmaps = 4,
        order = "asc[misc-fluids]-atmospheric-nitrogen",
        auto_barrel = false
    },
    {
        type = "fluid",
        name = "filtered-water",
        default_temperature = 22,
        max_temperature = 105,
        heat_capacity = "0.2KJ",
        base_color = {r=0, g=0.34, b=0.6},
        flow_color = {r=0.7, g=0.7, b=0.7},
        icon = sprite 'filtered-water',
        icon_size = 64, icon_mipmaps = 4,
        order = "asc[misc-fluids]-filtered-water"
    },
})