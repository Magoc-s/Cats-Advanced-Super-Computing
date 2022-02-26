--entity-fluid-boxes.lua
local default_funcs = require("default-funcs")

local ent_fluid_boxes = {}

ent_fluid_boxes.small_compute_node = {
      {
        production_type = "input",
        --pipe_picture = pipe_pics,
        pipe_covers = default_funcs.ventcoverspictures(),
        base_area  = 1,
        height     = 1,
        base_level = 1,
        pipe_connections = {{ type="input", position = {0.5, -1} }},
        secondary_draw_orders = { north = -1 }
        filter = "compute-coolant-air"
      },
      {
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_covers = default_funcs.ventcoverspictures(),
        pipe_connections =
        {
            {type = "input-output", position = {-1, 0.5}},
            {type = "input-output", position = {1, 0.5}}
        },
        production_type = "input-output",
        filter = "compute-data"
      },
      {
        production_type = "output",
        --pipe_picture = pipe_pics,
        pipe_covers = default_funcs.ventcoverspictures(),
        base_area  = 1,
        height     = 1,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, 1} }},
        secondary_draw_orders = { north = -1 }
        filter = "compute-coolant-air"
      }
    }

return ent_fluid_boxes