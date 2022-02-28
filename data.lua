--data.lua

-- Vars and funcs
require("default-vars")
require("default-funcs")
-- Categories
require("prototypes.categories.crafting-category")
require("prototypes.categories.module-category")
-- Items, Recipes, Entities TODO: split these files into corresponding thingies
require("prototypes.recipe.coolant-air")
require("prototypes.recipe.compute-data")
-- Entitities included here
require("prototypes.entities.asc-entities")

require("prototypes.collections.computing")
require("prototypes.collections.cooling")
-- Technology trees
-- require("prototypes.cat-technologies")
-- Fluids
require("prototypes.fluids.coolants")
require("prototypes.fluids.misc")
-- Modules
-- require("prototypes.modules.asc-compute-modules")
-- Custom ASC modules
require("prototypes.categories.module-category")
