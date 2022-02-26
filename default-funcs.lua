-- local-funcs.lua
function config(name)
    return settings.startup['cat:asc-'..name].value
end

function sprite(name)
    return '__cats-advanced-super-computing__/sprite/'..name
end

function sound(name)
    return '__cats-advanced-super-computing__/sound/'..name
end

function ventgraphic(name)
    return '__cats-advanced-super-computing__/graphics/entity/vent-covers/'..name
end

function ventcoverspictures()
    return {
      north =
      {
        filename = ventgraphic "vent-cover-north.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      east =
      {
        filename = ventgraphic "vent-cover-east.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      south =
      {
        filename = ventgraphic "vent-cover-south.png",,
        priority = "extra-high",
        width = 46,
        height = 52
      },
      west =
      {
        filename = ventgraphic "vent-cover-west.png",
        priority = "extra-high",
        width = 32,
        height = 32
      }
    }
  end