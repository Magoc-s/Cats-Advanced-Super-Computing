-- asc-technologies-collections.lua
-- contains a bunch of technology collections tables for the research unlocks

function small_scale_computing_unlocks()
    return {
        { type = 'unlock-recipe',
          recipe = 'asc:small-compute-node-rec'
        },
        { type = 'unlock-recipe',
            recipe = 'asc:small-swamp-cooler-rec'
        },
        { type = 'unlock-recipe',
            recipe = 'asc:small-blower-cooler-rec'
        },
    }
end