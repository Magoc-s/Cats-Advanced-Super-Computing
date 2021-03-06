--entity-fluid-boxes.lua
local default_funcs = require("default-funcs")
local default_vars  = require("default-vars")

local ent_fluid_boxes = {}
-- Fluid boxes without a production type can't be associated with an entity.
-- May have to restructure the tables here.

ent_fluid_boxes.small_compute_node = {
  {
    production_type = "input",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 1,
    height     = 1,
    base_level = -1,
    pipe_connections = {{ type="input", position = {-1.5, 1} }},
    secondary_draw_orders = { north = -1 },
  },
  {
    production_type = "output",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 1,
    height     = 1,
    base_level = 1,
    pipe_connections = {{ type="output", position = {1.5, 1} }},
    secondary_draw_orders = { north = -1 },
  },
  {
    production_type = "output",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 2,
    height     = 1,
    base_level = 1,
    pipe_connections = {{ type="output", position = {1.5, -1} }},
    secondary_draw_orders = { north = -1 },
  }
}

ent_fluid_boxes.advanced_compute_node = {
  {
    production_type = "input",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 2,
    height     = 1,
    base_level = -1,
    pipe_connections = {{ type="input", position = {1.8, 1} }},
    secondary_draw_orders = { north = -1 },
    filter = default_vars.mod_prefix .. "compute-coolant-water"
  },
  {
    production_type = "output",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 2,
    height     = 1,
    base_level = 1,
    pipe_connections = {{ type="output", position = {0.5, 2} }},
    secondary_draw_orders = { north = -1 },
    filter = default_vars.mod_prefix .. "compute-coolant-water"
  }
}

ent_fluid_boxes.quantum_compute_node = { -- TODO align fluid boxes with bigger size of quantum node
  {
    production_type = "input",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 2,
    height     = 1,
    base_level = -1,
    pipe_connections = {{ type="input", position = {1.8, 1} }},
    secondary_draw_orders = { north = -1 },
    filter = default_vars.mod_prefix .. "compute-coolant-ln2"
  },
  {
    production_type = "output",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 2,
    height     = 1,
    base_level = 1,
    pipe_connections = {{ type="output", position = {0.5, 2} }},
    secondary_draw_orders = { north = -1 },
    filter = default_vars.mod_prefix .. "compute-coolant-ln2"
  }
}

ent_fluid_boxes.small_swamp_cooler = {
  {
    production_type = "input",
    base_area = 1,
    height = 2,
    base_level = -1,
    pipe_covers = default_funcs.ventcoverspictures(),
    pipe_connections =
    {
      {type = "input", position = {-2, -1}},
      {type = "input", position = {-2, 1}}
    },
    filter = "water"
  },
  {
    production_type = "output",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 1,
    height     = 1,
    base_level = 1,
    pipe_connections = {
      { type="output", position = {2, -1} },
      { type="output", position = {2, 1} }
    },
    secondary_draw_orders = { north = -1 },
    filter = default_vars.mod_prefix .. "compute-coolant-air"
  }
}

ent_fluid_boxes.large_swamp_cooler = {
  {
    production_type = "input",
    base_area = 1,
    height = 2,
    base_level = -1,
    pipe_covers = default_funcs.ventcoverspictures(),
    pipe_connections =
    {
      {type = "input", position = {-2.5, -1.5}},
      {type = "input", position = {-2.5, 1.5}}
    },
    filter = "water"
  },
  {
    production_type = "output",
    --pipe_picture = pipe_pics,
    pipe_covers = default_funcs.ventcoverspictures(),
    base_area  = 1,
    height     = 1,
    base_level = 1,
    pipe_connections = {
      { type="output", position = {2.5, -1.5} },
      { type="output", position = {2.5, 1.5} }
    },
    secondary_draw_orders = { north = -1 },
    filter = default_vars.mod_prefix .. "compute-coolant-air"
  }
}

ent_fluid_boxes.small_blower_cooler = {
  {
    production_type = "output",
    base_area = 1,
    height = 2,
    base_level = 1,
    pipe_covers = default_funcs.ventcoverspictures(),
    pipe_connections =
    {
      {type = "output", position = {0, -1}},
      {type = "output", position = {0, 1}}
    },
    filter = default_vars.mod_prefix .. "compute-coolant-air"
  }
}

ent_fluid_boxes.small_refridgerated_cooler = {
  {
    production_type = "output",
    base_area = 1,
    height = 2,
    base_level = 1,
    pipe_covers = default_funcs.ventcoverspictures(),
    pipe_connections =
    {
      {type = "output", position = {0.5, -1.5}},
      {type = "output", position = {0.5, 1.5}}
    },
    filter = default_vars.mod_prefix .. "compute-coolant-air"
  }
}

-- Small data bank (aiming for 3x3 entity)
-------------------------------------------
-- Standard storage tank
--   v          position = {-1,-2}
--  >+-+        position = { 2, 1}
--   |#|        position = { 1, 2}
--   +-+<       position = {-2,-1}
--     ^
ent_fluid_boxes.small_data_bank = {
  {
    base_area = 250,
    pipe_covers = pipecoverspictures(), -- TODO: make this into some network cable covers pictures
    pipe_connections =
    {
        { position = {-2,-1} },
        { position = { 2, 1} } }
    },
    filter = default_vars.mod_prefix .. "compute-data"
  }
}

return ent_fluid_boxes