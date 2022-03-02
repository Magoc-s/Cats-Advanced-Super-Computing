local default_vars = require("default-vars")

function asc_compute_module_limitation()
    return
          {
            default_vars.mod_prefix .. "compute-data"
          }
    end

function asc_module_graphics(name)
    return '__cats-advanced-super-computing__/graphics/module/'..name
end