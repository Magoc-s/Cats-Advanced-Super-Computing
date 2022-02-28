-- default-funcs.lua
local default_funcs = {}
function default_funcs.config(name)
    return settings.startup['cat:asc-'..name].value
end

function default_funcs.sprite(name)
    return '__advanced-super-computing__/sprite/'..name
end

function default_funcs.ent_sprite(name)
  return default_funcs.sprite('entity/') .. name 
end

function default_funcs.sound(name)
    return '__advanced-super-computing__/sound/'..name
end

function default_funcs.ventgraphic(name)
    return '__advanced-super-computing__/graphics/entity/vent-covers/'..name
end

function default_funcs.ventcoverspictures()
    return {
      north =
      {
        filename = default_funcs.ventgraphic "vent-cover-north.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      east =
      {
        filename = default_funcs.ventgraphic "vent-cover-east.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      south =
      {
        filename = default_funcs.ventgraphic "vent-cover-south.png",
        priority = "extra-high",
        width = 46,
        height = 52
      },
      west =
      {
        filename = default_funcs.ventgraphic "vent-cover-west.png",
        priority = "extra-high",
        width = 32,
        height = 32
      }
    }
end

return default_funcs