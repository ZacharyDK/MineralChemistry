local seconds = 60
local minutes = 60*seconds
require ("util")


-- TODO ratios

data:extend(
{
  --Crafting
  {
    type = "recipe",
    name = "froth-floatation-plant",
    main_product = "froth-floatation-plant",
    category = "crafting",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/froth-floatator.png",
        scale = 0.9,
        --shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 20,
    enabled = false,

    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 3},
      {type = "item", name = "chemical-plant", amount = 1},
      {type = "item", name = "storage-tank", amount = 1},
      {type = "item", name = "pipe", amount = 4},
      {type = "item", name = "steel-plate", amount = 12},
      {type = "item", name = "advanced-circuit", amount = 3},
      {type = "item", name = "copper-cable", amount = 4},
      {type = "item", name = "fast-inserter", amount = 1},
    },
    results = 
    {
      {type="item", name="froth-floatation-plant", amount=1},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = true, 
    auto_recycle = true,
  },
  {
    type = "recipe",
    name = "blast-furnace",
    main_product = "blast-furnace",
    category = "crafting",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/blast-furnace.png",
        scale = 0.9,
        --shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 10,
    enabled = false,

    ingredients =
    {
      {type = "item", name = "steel-furnace", amount = 1},
      {type = "item", name = "pipe", amount = 2},
      {type = "item", name = "steel-plate", amount = 5},
      {type = "item", name = "electronic-circuit", amount = 2},
    },
    results = 
    {
      {type="item", name="blast-furnace", amount=1},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = true, 
    auto_recycle = true,
  },
  {
    type = "recipe",
    name = "dangerous-cryogenic-plant",
    main_product = "dangerous-cryogenic-plant",
    category = "crafting",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/cryogenic-plant.png",
        scale = 0.9,
        --shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 15,
    enabled = false,

    ingredients =
    {
      {type = "item", name = "refined-concrete", amount = 20},
      {type = "item", name = "pipe", amount = 10},
      {type = "item", name = "steel-plate", amount = 30},
      {type = "item", name = "processing-unit", amount = 15},
      {type = "item", name = "battery", amount = 10},
      {type = "item", name = "copper-cable", amount = 5},
      {type = "item", name = "electric-engine-unit", amount = 5},
    },
    results = 
    {
      {type="item", name="dangerous-cryogenic-plant", amount=1},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = true, 
    auto_recycle = true,
  },

  
  --Saponification
  {
    type = "recipe",
    icon = "__mineral-chemistry__/graphics/icons/fluid/glycerol-64.png",
    icon_size = 64,
    name = "saponification-from-light-oil",
    energy_required = 30,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "fluid", name = "sulfuric-acid-dilute", amount = 700},
      {type = "fluid", name = "light-oil", amount = 750}
    },
    results = 
    {
      {type="fluid", name="glycerol", amount=150},
      {type="fluid", name="fatty-acids", amount=450},
    },
    crafting_machine_tint =
    {
      primary = {r = 198, g = 198, b = 152, a = 1.000}, --rgb(198, 198, 152)
      secondary = {r = 202, g = 215, b = 140, a = 1.000}, --rgb(202, 215, 140)
      tertiary = {r = 228, g = 197, b = 151, a = 1.000}, --rgb(228, 197, 151)
      quaternary = {r = 255, g = 187, b = 73, a = 1.000}, --rgb(255, 187, 73)
    },
    allow_productivity = true,
    allow_quality = false, 
    main_product = "glycerol",
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "glycerol-to-plastic",
    icons = 
    {
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/glycerol-64.png",
        icon_size = 64,
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 12,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "item", name = "iron-plate", amount = 1},
      {type = "fluid", name = "sulfuric-acid-dilute", amount = 100},
      {type = "fluid", name = "glycerol", amount = 300},
    },
    results = 
    {
      {type="item", name="plastic-bar", amount=6},
    },
    crafting_machine_tint =
    {
      primary = {r = 198, g = 198, b = 152, a = 1.000}, --rgb(198, 198, 152)
      secondary = {r = 202, g = 215, b = 140, a = 1.000}, --rgb(202, 215, 140)
      tertiary = {r = 228, g = 197, b = 151, a = 1.000}, --rgb(228, 197, 151)
      quaternary = {r = 255, g = 187, b = 73, a = 1.000}, --rgb(255, 187, 73)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "plastic-bar",
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "glycerol-to-fuel",
    icons = 
    {
      {
        icon = "__base__/graphics/icons/solid-fuel.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/glycerol-64.png",
        icon_size = 64,
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 4,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "fluid", name = "fatty-acids", amount = 90},
      {type = "fluid", name = "glycerol", amount = 30},
    },
    results = 
    {
      {type="item", name="solid-fuel", amount=2},
    },
    crafting_machine_tint =
    {
      primary = {r = 198, g = 198, b = 152, a = 1.000}, --rgb(198, 198, 152)
      secondary = {r = 202, g = 215, b = 140, a = 1.000}, --rgb(202, 215, 140)
      tertiary = {r = 228, g = 197, b = 151, a = 1.000}, --rgb(228, 197, 151)
      quaternary = {r = 255, g = 187, b = 73, a = 1.000}, --rgb(255, 187, 73)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "solid-fuel",
    auto_recycle = false,
  },

  --Charcolation
  {
    type = "recipe",
    name = "glycerol-charcolation",
    icons = 
    {
      {
        icon = "__space-age__/graphics/icons/carbon.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/glycerol-64.png",
        icon_size = 64,
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 25,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "fluid", name = "glycerol", amount = 45},
    },
    results = 
    {
      {type="item", name="carbon", amount=1},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "carbon",
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "fatty-acid-charcolation",
    icons = 
    {
      {
        icon = "__space-age__/graphics/icons/carbon.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/alpha-linolenic-acid-64.png",
        icon_size = 64,
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 25,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "fluid", name = "fatty-acids", amount = 22},
    },
    results = 
    {
      {type="item", name="carbon", amount=1},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "carbon",
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "solid-fuel-charcolation",
    icons = 
    {
      {
        icon = "__space-age__/graphics/icons/carbon.png",
        scale = 0.9
      },
      {
        icon = "__base__/graphics/icons/solid-fuel.png",
        --icon_size = 64,
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 15,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "item", name = "solid-fuel", amount = 2},
    },
    results = 
    {
      {type="item", name="carbon", amount=2},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "carbon",
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "wood-charcolation",
    icons = 
    {
      {
        icon = "__base__/graphics/icons/wood.png",
        scale = 0.9
      },
      {
        icon = "__space-age__/graphics/icons/carbon.png",
        --icon_size = 64,
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 22,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "item", name = "wood", amount = 5},
    },
    results = 
    {
      {type="item", name="carbon", amount=2},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "carbon",
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "petroleum-gas-charcolation",
    icons = 
    {
      {
        icon = "__space-age__/graphics/icons/carbon.png",
        scale = 0.9
      },
      {
        icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 25,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "fluid", name = "petroleum-gas", amount = 50},
    },
    results = 
    {
      {type="item", name="carbon", amount=1},
      {type = "fluid", name = "sulfur-dioxide", amount = 40},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "carbon",
    auto_recycle = false,
  },

  --Blast fuel
  {
    type = "recipe",
    name = "blast-fuel",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/blast-fuel.png",
        scale = 0.9
      },
    },

    energy_required = 7,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "item", name = "solid-fuel", amount = 1},
      {type = "item", name = "carbon", amount = 4},
    },
    results = 
    {
      {type="item", name="blast-fuel", amount=1},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "blast-fuel",
    auto_recycle = false,
  },
  
  --Triangle.
  --Oxide to metal
  {
    type = "recipe",
    name = "copper-oxide-reduction",
    icons = 
    {
      {
        icon = "__base__/graphics/icons/copper-ore.png",
        scale = 0.9
      },
    },

    energy_required = 20,
    enabled = false,
    category = "blasting",
    ingredients =
    {
      {type = "item", name = "tenorite", amount = 4},
    },
    results = 
    {
      {type="item", name="copper-ore", amount = 3},
      {type = "item", name = "slag", amount = 1,probability = 0.1},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "copper-ore",
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "iron-oxide-reduction",
    icons = 
    {
      {
        icon = "__base__/graphics/icons/iron-ore.png",
        scale = 0.9
      },
    },

    energy_required = 20,
    enabled = false,
    category = "blasting",
    ingredients =
    {
      {type = "item", name = "hematite", amount = 4},
    },
    results = 
    {
      {type="item", name="iron-ore", amount = 3},
      {type = "item", name = "slag", amount = 1,probability = 0.17},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "iron-ore",
    auto_recycle = false,
  },
  --Carbonate to Oxide
  {
    type = "recipe",
    name = "copper-carbonate-to-oxide",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/tenorite/tenorite-1.png",
        scale = 0.9
      },
    },

    energy_required = 15,
    enabled = false,
    category = "smelting",
    ingredients =
    {
      {type = "item", name = "malachite", amount = 4},
    },
    results = 
    {
      {type="item", name="tenorite", amount = 3, ignored_by_productivity = 2},
      {type = "item", name = "slag", amount = 1,probability = 0.1},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
    main_product = "tenorite",
  },
  {
    type = "recipe",
    name = "iron-carbonate-to-oxide",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/hematite/hematite-1.png",
        scale = 0.9
      },
    },

    energy_required = 20,
    enabled = false,
    category = "smelting",
    ingredients =
    {
      {type = "item", name = "siderite", amount = 4},
    },
    results = 
    {
      {type="item", name="hematite", amount = 3, ignored_by_productivity = 2},
      {type = "item", name = "slag", amount = 1,probability = 0.17},
    },
    crafting_machine_tint =
    {
      primary = {r = 175, g = 63, b = 40, a = 1.000}, --rgb(175, 63, 40) --HEMATITE COLOR
      secondary = {r = 210, g = 76, b = 35, a = 1.000}, --rgb(210, 76, 35)
      tertiary = {r = 191, g = 128, b = 46, a = 1.000}, --rgb(191, 128, 46)
      quaternary = {r = 184, g = 81, b = 43, a = 1.000}, --rgb(184, 81, 43)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
    main_product = "hematite",
  },
  --Sulfide to Oxide Smelting
  {
    type = "recipe",
    name = "copper-sulfide-to-oxide",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/tenorite/tenorite-1.png",
        scale = 0.9
      },
    },

    energy_required = 15,
    enabled = false,
    category = "smelting",
    ingredients =
    {
      {type = "item", name = "covellite", amount = 4},
    },
    results = 
    {
      {type="item", name="tenorite", amount = 3, ignored_by_productivity = 2},
      {type = "item", name = "slag", amount = 1,probability = 0.17},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
    main_product = "tenorite",
  },
  {
    type = "recipe",
    name = "iron-sulfide-to-oxide",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/hematite/hematite-1.png",
        scale = 0.9
      },
    },

    energy_required = 20,
    enabled = false,
    category = "smelting",
    ingredients =
    {
      {type = "item", name = "pyrite", amount = 4},
    },
    results = 
    {
      {type="item", name="hematite", amount = 3, ignored_by_productivity = 2},
      {type = "item", name = "slag", amount = 1,probability = 0.17},
    },
    crafting_machine_tint =
    {
      primary = {r = 175, g = 63, b = 40, a = 1.000}, --rgb(175, 63, 40)
      secondary = {r = 210, g = 76, b = 35, a = 1.000}, --rgb(210, 76, 35)
      tertiary = {r = 191, g = 128, b = 46, a = 1.000}, --rgb(191, 128, 46)
      quaternary = {r = 184, g = 81, b = 43, a = 1.000}, --rgb(184, 81, 43)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
    main_product = "hematite",
  },
  --Sulfide to Oxide Chemistry.

  {
    type = "recipe",
    name = "copper-sulfide-to-oxide-chemistry",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/tenorite/tenorite-1.png",
        scale = 0.9
      },
    },

    energy_required = 15,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "item", name = "covellite", amount = 4},
    },
    results = 
    {
      {type="item", name="tenorite", amount = 3, ignored_by_productivity = 2},
      {type = "item", name = "slag", amount = 1,probability = 0.17},
      {type = "fluid", name = "sulfur-dioxide", amount = 125, ignored_by_productivity = 80},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
    main_product = "tenorite",
  },
  {
    type = "recipe",
    name = "iron-sulfide-to-oxide-chemistry",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/hematite/hematite-1.png",
        scale = 0.9
      },
    },

    energy_required = 20,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "item", name = "pyrite", amount = 4},
    },
    results = 
    {
      {type="item", name="hematite", amount = 3, ignored_by_productivity = 2},
      {type = "item", name = "slag", amount = 1,probability = 0.17},
      {type = "fluid", name = "sulfur-dioxide", amount = 125, ignored_by_productivity = 80},
    },
    crafting_machine_tint =
    {
      primary = {r = 175, g = 63, b = 40, a = 1.000}, --rgb(175, 63, 40)
      secondary = {r = 210, g = 76, b = 35, a = 1.000}, --rgb(210, 76, 35)
      tertiary = {r = 191, g = 128, b = 46, a = 1.000}, --rgb(191, 128, 46)
      quaternary = {r = 184, g = 81, b = 43, a = 1.000}, --rgb(184, 81, 43)
    },
    allow_productivity = true,
    allow_quality = true, 
    main_product = "hematite",
    auto_recycle = false,
  },

  --Conversion to Sulfate solutions.
  --oxide to sulfuate
  {
    type ="recipe",
    name ="copper-oxide-to-sulfate",
    category ="chemistry",
    energy_required = 9,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/copper-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/tenorite/tenorite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="tenorite", amount = 4},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="copper-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 1,probability = 0.07},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="copper-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
  },
  {
    type ="recipe",
    name ="iron-oxide-to-sulfate",
    category ="chemistry",
    energy_required = 9,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/iron-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/hematite/hematite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="hematite", amount = 4},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="iron-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 1,probability = 0.07},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="iron-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 230, a = 1.000}, --rgb(86, 246, 230)
      secondary = {r = 56, g = 211, b = 190, a = 1.000}, --rgb(56, 211, 190)
      tertiary = {r = 112, g = 208, b = 205, a = 1.000}, --rgb(112, 208, 205)
      quaternary = {r = 48, g = 239, b = 194, a = 1.000}, --rgb(48, 239, 194)
    },
  },

  --carbonate to sulfate
  {
    type ="recipe",
    name ="copper-carbonate-to-sulfate",
    category ="chemistry",
    energy_required = 5,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/copper-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/malachite/malachite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="malachite", amount = 4},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="copper-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 1,probability = 0.07},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="copper-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
  },
  {
    type ="recipe",
    name ="iron-carbonate-to-sulfate",
    category ="chemistry",
    energy_required = 5,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/iron-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/siderite/siderite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="siderite", amount = 4},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="iron-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 1,probability = 0.07},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="iron-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 230, a = 1.000}, --rgb(86, 246, 230)
      secondary = {r = 56, g = 211, b = 190, a = 1.000}, --rgb(56, 211, 190)
      tertiary = {r = 112, g = 208, b = 205, a = 1.000}, --rgb(112, 208, 205)
      quaternary = {r = 48, g = 239, b = 194, a = 1.000}, --rgb(48, 239, 194)
    },
  },

  --sulfide to sulfate
  {
    type ="recipe",
    name ="copper-sulfide-to-sulfate",
    category ="chemistry",
    energy_required = 15,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/copper-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/covellite/covellite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="covellite", amount = 4},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="copper-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 1,probability = 0.07},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="copper-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
  },
  {
    type ="recipe",
    name ="iron-sulfide-to-sulfate",
    category ="chemistry",
    energy_required = 15,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/iron-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/pyrite/pyrite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="pyrite", amount = 4},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="iron-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 1,probability = 0.07},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="iron-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 230, a = 1.000}, --rgb(86, 246, 230)
      secondary = {r = 56, g = 211, b = 190, a = 1.000}, --rgb(56, 211, 190)
      tertiary = {r = 112, g = 208, b = 205, a = 1.000}, --rgb(112, 208, 205)
      quaternary = {r = 48, g = 239, b = 194, a = 1.000}, --rgb(48, 239, 194)
    },
  },

  --Gangue(aka slag) processing and fluorine chemistry
  --Gangue is a waste product, that exists for the player to get rid off to keep the factory flowing.
  --It is both an element of ore processing in the real world, and a spike in difficulty
  {
    type ="recipe",
    name ="slag-recycling",
    category = "recycling-or-hand-crafting",
    energy_required = 3,
    subgroup = "fulgora-processes", --TODO add my own subprocess.
    order = "zzz[trash]-z[slag-recycling]",
    enabled = false,
    icons = 
    {
      {
        icon = "__quality__/graphics/icons/recycling.png"
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/slag/slag-1.png",
        scale = 0.4
      },
      {
        icon = "__quality__/graphics/icons/recycling-top.png"
      }
    },
    ingredients =
    {

      {type ="item", name ="slag", amount = 1},
    },


    results =
    {
      {type = "item", name = "slag", amount = 1,probability = 0.88},
    },
    allow_quality = false,
    allow_productivity = false,
    maximum_productivity = 1,
    main_product ="slag",
    auto_recycle = false,
  },
  {
    type ="recipe",
    name ="hydrofluoric-acid",
    category ="fluorination",
    energy_required = 6,
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/molecule-hydrofluoric-acid.png",
        scale = 0.9
      },
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="fluorite", amount = 3},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="hydrofluoric-acid", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "calcium-sulfate", amount = 3},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="hydrofluoric-acid",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 153, a = 1.000}, --rgb(86, 246, 153)
      secondary = {r = 56, g = 211, b = 95, a = 1.000}, --rgb(56, 211, 95)
      tertiary = {r = 112, g = 208, b = 144, a = 1.000}, --rgb(112, 208, 144)
      quaternary = {r = 48, g = 239, b = 80, a = 1.000}, --rgb(48, 239, 80)
    },
  },
  {
    type ="recipe",
    name ="calcium-sulfate-destruction",
    category ="chemistry",
    energy_required = 6,
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/calcium-sulfate.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/slash.png",
        scale = 0.9,
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="solid-fuel", amount = 3},
      {type ="item", name ="calcium-sulfate", amount = 3},
    },


    results =
    {
      {type ="fluid", name ="sulfur-dioxide", amount = 100, ignored_by_productivity = 50},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="sulfur-dioxide",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 198, g = 198, b = 152, a = 1.000}, --rgb(198, 198, 152)
      secondary = {r = 202, g = 215, b = 140, a = 1.000}, --rgb(202, 215, 140)
      tertiary = {r = 228, g = 197, b = 151, a = 1.000}, --rgb(228, 197, 151)
      quaternary = {r = 255, g = 187, b = 73, a = 1.000}, --rgb(255, 187, 73)
    },
  },
  {
    type ="recipe",
    name ="slag-destruction",
    category ="fluorination",
    subgroup = "fluid",
    energy_required = 8,
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/slag/slag-1.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/slash.png",
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="slag", amount = 1},
      {type ="fluid", name ="hydrofluoric-acid", amount = 10},
    },


    results =
    {
    },
    allow_quality =false,
    allow_productivity = false,
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
  },
  {
    type ="recipe",
    name ="fluorine-gas-from-acid",
    category ="fluorination",
    energy_required = 20,
    icons = 
    {
      {
        icon = "__space-age__/graphics/icons/fluid/fluorine.png",
        scale = 0.9
      },
    },

    enabled = false,
    ingredients =
    {
      {type ="fluid", name ="hydrofluoric-acid", amount = 100},
    },


    results =
    {
      {type ="fluid", name ="fluorine", amount = 50, ignored_by_productivity = 20},
      {type = "item", name = "fluorine-explosion", amount = 1, probability = 0.03},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="fluorine",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 153, a = 1.000}, --rgb(86, 246, 153)
      secondary = {r = 56, g = 211, b = 95, a = 1.000}, --rgb(56, 211, 95)
      tertiary = {r = 112, g = 208, b = 144, a = 1.000}, --rgb(112, 208, 144)
      quaternary = {r = 48, g = 239, b = 80, a = 1.000}, --rgb(48, 239, 80)
    },
  },
  {
    type ="recipe",
    name ="fluorine-gas-from-acid-danger",
    category ="fluorination",
    energy_required = 10,
    icons = 
    {
      {
        icon = "__space-age__/graphics/icons/fluid/fluorine.png",
        scale = 0.9
      },
      {
        icon = "__base__/graphics/icons/explosion.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {
      {type ="fluid", name ="hydrofluoric-acid", amount = 200},
    },


    results =
    {
      {type ="fluid", name ="fluorine", amount = 100, ignored_by_productivity = 20},
      {type = "item", name = "fluorine-explosion", amount = 1, probability = 0.12},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="fluorine",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 153, a = 1.000}, --rgb(86, 246, 153)
      secondary = {r = 56, g = 211, b = 95, a = 1.000}, --rgb(56, 211, 95)
      tertiary = {r = 112, g = 208, b = 144, a = 1.000}, --rgb(112, 208, 144)
      quaternary = {r = 48, g = 239, b = 80, a = 1.000}, --rgb(48, 239, 80)
    },
  },
  {
    type ="recipe",
    name ="fluoro-slag-destruction",
    category ="fluorination",
    subgroup = "fluid",
    energy_required = 12,
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/slag/slag-1.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/slash.png",
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="slag", amount = 15},
      {type ="item", name ="solid-fuel", amount = 1},
      {type ="fluid", name ="fluorine", amount = 25},
    },


    results =
    {
    },
    allow_quality =false,
    allow_productivity = false,
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
  },
  {
    type ="recipe",
    name ="dangerous-fluoro-slag-destruction",
    category ="fluorination",
    subgroup = "fluid",
    energy_required = 8,
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/slag/slag-1.png",
        scale = 0.9
      },
      {
        icon = "__base__/graphics/icons/explosion.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/slash.png",
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="slag", amount = 70},
      {type ="item", name ="solid-fuel", amount = 2},
      {type ="fluid", name ="fluorine", amount = 30},
    },


    results =
    {
      {type = "item", name = "fluorine-explosion", amount = 1, probability = 0.15},
    },
    allow_quality =false,
    allow_productivity = false,
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
  },
  {
    type ="recipe",
    name ="fluoro-detonation",
    category ="fluorination",
    energy_required = 2,
    icons = 
    {
      {
        icon = "__base__/graphics/icons/explosion.png",
        scale = 0.9,
      },
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="solid-fuel", amount = 3},
      {type ="fluid", name ="fluorine", amount = 50},
    },


    results =
    {
      {type = "item", name = "fluorine-explosion", amount = 1}
    },
    allow_quality =false,
    allow_productivity = true,
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
  },

  --Froth floatation
  {
    type = "recipe",
    name = "covellite-froth",
    main_product = "covellite-froth",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/blue.png",
        scale = 0.9,
      }
    },

    energy_required = 20,
    enabled = false,
    category = "froth-floatation",
    ingredients =
    {
      {type = "item", name = "covellite_rough", amount = 14},
      {type = "fluid", name = "glycerol", amount = 15},
      {type = "fluid", name = "fatty-acids", amount = 200},
      {type = "fluid", name = "water", amount = 1500},
    },
    results = 
    {
      {type="fluid", name="covellite-froth", amount = 200},
      {type = "fluid", name = "water", amount = 1500,ignored_by_productivity = 9999},
      {type = "item", name = "slag", amount = 10},
      {type = "item", name = "slag", amount = 4, probability = 0.2},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "pyrite-froth",
    main_product = "pyrite-froth",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/blue-gray.png",
        scale = 0.9,
      }
    },

    energy_required = 20,
    enabled = false,
    category = "froth-floatation",
    ingredients =
    {
      {type = "item", name = "pyrite_rough", amount = 14},
      {type = "fluid", name = "glycerol", amount = 15},
      {type = "fluid", name = "fatty-acids", amount = 200},
      {type = "fluid", name = "water", amount = 1500},
    },
    results = 
    {
      {type="fluid", name="pyrite-froth", amount = 200},
      {type = "fluid", name = "water", amount = 1500,ignored_by_productivity = 9999},
      {type = "item", name = "slag", amount = 10},
      {type = "item", name = "slag", amount = 4, probability = 0.2},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "tenorite-froth",
    main_product = "tenorite-froth",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/black.png",
        scale = 0.9,
      }
    },

    energy_required = 20,
    enabled = false,
    category = "froth-floatation",
    ingredients =
    {
      {type = "item", name = "tenorite_rough", amount = 14},
      {type = "fluid", name = "glycerol", amount = 15},
      {type = "fluid", name = "fatty-acids", amount = 200},
      {type = "fluid", name = "water", amount = 1500},
    },
    results = 
    {
      {type="fluid", name="tenorite-froth", amount = 200},
      {type = "fluid", name = "water", amount = 1500,ignored_by_productivity = 9999},
      {type = "item", name = "slag", amount = 10},
      {type = "item", name = "slag", amount = 4, probability = 0.2},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "malachite-froth",
    main_product = "malachite-froth",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/green.png",
        scale = 0.9,
      }
    },

    energy_required = 20,
    enabled = false,
    category = "froth-floatation",
    ingredients =
    {
      {type = "item", name = "malachite_rough", amount = 14},
      {type = "fluid", name = "glycerol", amount = 15},
      {type = "fluid", name = "fatty-acids", amount = 200},
      {type = "fluid", name = "water", amount = 1500},
    },
    results = 
    {
      {type="fluid", name="malachite-froth", amount = 200},
      {type = "fluid", name = "water", amount = 1500,ignored_by_productivity = 9999},
      {type = "item", name = "slag", amount = 10},
      {type = "item", name = "slag", amount = 4, probability = 0.2},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "siderite-froth",
    main_product = "siderite-froth",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/fluid-droplet-mineral-oil.png",
        scale = 0.9,
      }
    },

    energy_required = 20,
    enabled = false,
    category = "froth-floatation",
    ingredients =
    {
      {type = "item", name = "siderite_rough", amount = 14},
      {type = "fluid", name = "glycerol", amount = 15},
      {type = "fluid", name = "fatty-acids", amount = 200},
      {type = "fluid", name = "water", amount = 1500},
    },
    results = 
    {
      {type="fluid", name="siderite-froth", amount = 200},
      {type = "fluid", name = "water", amount = 1500,ignored_by_productivity = 9999},
      {type = "item", name = "slag", amount = 10},
      {type = "item", name = "slag", amount = 4, probability = 0.2},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "hematite-froth",
    main_product = "hematite-froth",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/fluid/red.png",
        scale = 0.9,
      }
    },

    energy_required = 20,
    enabled = false,
    category = "froth-floatation",
    ingredients =
    {
      {type = "item", name = "hematite_rough", amount = 14},
      {type = "fluid", name = "glycerol", amount = 15},
      {type = "fluid", name = "fatty-acids", amount = 200},
      {type = "fluid", name = "water", amount = 1500},
    },
    results = 
    {
      {type="fluid", name="hematite-froth", amount = 200,ignored_by_productivity = 9999},
      {type = "fluid", name = "water", amount = 1500},
      {type = "item", name = "slag", amount = 10},
      {type = "item", name = "slag", amount = 4, probability = 0.2},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },

  --Froth Recovery
  {
    type = "recipe",
    name = "covellite-recovery",
    main_product = "covellite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/covellite/covellite-1.png",
        scale = 0.9,
      }
    },

    energy_required = 3,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type="fluid", name="covellite-froth", amount = 200},
    },
    results = 
    {
      {type = "item", name = "covellite", amount = 4},
      {type = "fluid", name = "fatty-acids", amount = 180,ignored_by_productivity = 9999},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  }, 
  {
    type = "recipe",
    name = "pyrite-recovery",
    main_product = "pyrite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/pyrite/pyrite-1.png",
        scale = 0.9,
      }
    },

    energy_required = 3,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type="fluid", name="pyrite-froth", amount = 200},
    },
    results = 
    {
      {type = "item", name = "pyrite", amount = 4},
      {type = "fluid", name = "fatty-acids", amount = 180,ignored_by_productivity = 9999},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "tenorite-recovery",
    main_product = "tenorite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/tenorite/tenorite-1.png",
        scale = 0.9,
      }
    },

    energy_required = 3,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type="fluid", name="tenorite-froth", amount = 200},
    },
    results = 
    {
      {type = "item", name = "tenorite", amount = 4},
      {type = "fluid", name = "fatty-acids", amount = 180,ignored_by_productivity = 9999},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },    
  {
    type = "recipe",
    name = "malachite-recovery",
    main_product = "malachite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/malachite/malachite-1.png",
        scale = 0.9,
      }
    },

    energy_required = 3,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type="fluid", name="malachite-froth", amount = 200},
    },
    results = 
    {
      {type = "item", name = "malachite", amount = 4},
      {type = "fluid", name = "fatty-acids", amount = 180,ignored_by_productivity = 9999},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "siderite-recovery",
    main_product = "siderite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/siderite/siderite-1.png",
        scale = 0.9,
      }
    },

    energy_required = 3,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type="fluid", name="siderite-froth", amount = 200},
    },
    results = 
    {
      {type = "item", name = "siderite", amount = 4},
      {type = "fluid", name = "fatty-acids", amount = 180,ignored_by_productivity = 9999},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },  
  {
    type = "recipe",
    name = "hematite-recovery",
    main_product = "hematite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/hematite/hematite-1.png",
        scale = 0.9,
      }
    },

    energy_required = 3,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type="fluid", name="hematite-froth", amount = 200},
    },
    results = 
    {
      {type = "item", name = "hematite", amount = 4},
      {type = "fluid", name = "fatty-acids", amount = 180,ignored_by_productivity = 9999},
    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = false,
    allow_quality = false, 
    auto_recycle = false,
  },

  --Brute force pressure oxidation. 
  --Makes lots of gangue, but you directly get sulfate solutions to make metals.

    --Conversion to Sulfate solutions.
  --oxide rough to sulfate
  {
    type ="recipe",
    name ="copper-oxide_rough_to_sulfate",
    category ="chemistry",
    energy_required = 18,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/copper-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/low-quality/tenorite/tenorite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="tenorite_rough", amount = 15},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="copper-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 15},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="copper-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
  },
  {
    type ="recipe",
    name ="iron-oxide_rough_to_sulfate",
    category ="chemistry",
    energy_required = 18,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/iron-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/low-quality/hematite/hematite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="hematite_rough", amount = 15},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="iron-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 15},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="iron-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 230, a = 1.000}, --rgb(86, 246, 230)
      secondary = {r = 56, g = 211, b = 190, a = 1.000}, --rgb(56, 211, 190)
      tertiary = {r = 112, g = 208, b = 205, a = 1.000}, --rgb(112, 208, 205)
      quaternary = {r = 48, g = 239, b = 194, a = 1.000}, --rgb(48, 239, 194)
    },
  },

  --carbonate rough to sulfate
  {
    type ="recipe",
    name ="copper-carbonate_rough_to_sulfate",
    category ="chemistry",
    energy_required = 10,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/copper-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/low-quality/malachite/malachite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="malachite_rough", amount = 15},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="copper-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 15},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="copper-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
  },
  {
    type ="recipe",
    name ="iron-carbonate_rough_to_sulfate",
    category ="chemistry",
    energy_required = 10,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/iron-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/low-quality/siderite/siderite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="siderite_rough", amount = 15},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="iron-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 15},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="iron-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 230, a = 1.000}, --rgb(86, 246, 230)
      secondary = {r = 56, g = 211, b = 190, a = 1.000}, --rgb(56, 211, 190)
      tertiary = {r = 112, g = 208, b = 205, a = 1.000}, --rgb(112, 208, 205)
      quaternary = {r = 48, g = 239, b = 194, a = 1.000}, --rgb(48, 239, 194)
    },
  },

  --sulfide rough to sulfate
  {
    type ="recipe",
    name ="copper-sulfide_rough_to_sulfate",
    category ="chemistry",
    energy_required = 30,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/copper-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/low-quality/covellite/covellite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="covellite_rough", amount = 15},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="copper-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 15},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="copper-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
  },
  {
    type ="recipe",
    name ="iron-sulfide_rough_to_sulfate",
    category ="chemistry",
    energy_required = 30,
    icons = 
    {
      {
        icon ="__mineral-chemistry__/graphics/icons/fluid/iron-sulfate-solution.png",
        scale = 0.9
      },
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/low-quality/pyrite/pyrite-1.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    enabled = false,
    ingredients =
    {

      {type ="item", name ="pyrite_rough", amount = 15},
      {type ="fluid", name ="sulfuric-acid", amount = 300},
    },


    results =
    {
      {type ="fluid", name ="iron-sulfate-solution", amount = 300, ignored_by_productivity = 230},
      {type = "item", name = "slag", amount = 15},
    },
    allow_quality =false,
    maximum_productivity = 2,
    main_product ="iron-sulfate-solution",
    auto_recycle = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 230, a = 1.000}, --rgb(86, 246, 230)
      secondary = {r = 56, g = 211, b = 190, a = 1.000}, --rgb(56, 211, 190)
      tertiary = {r = 112, g = 208, b = 205, a = 1.000}, --rgb(112, 208, 205)
      quaternary = {r = 48, g = 239, b = 194, a = 1.000}, --rgb(48, 239, 194)
    },
  },



  --Hydraulic pressure washing - emissions_multiplier of 8, we let the waste water run.

  {
    type = "recipe",
    name = "covellite-pressure-washing",
    main_product = "covellite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/covellite/covellite-1.png",
        scale = 0.9,
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 10,
    category = "hydraulic-washing",
    enabled = false,

    emissions_multiplier = 8,
    ingredients =
    {
      {type = "item", name = "covellite_rough", amount = 28},
      {type = "fluid", name = "water", amount = 400},
    },
    results = 
    {
      {type = "item", name = "covellite", amount = 4},
      {type = "item", name = "slag", amount = 15, probability = 0.3, ignored_by_productivity = 7},
      {type = "item", name = "slag", amount = 7, probability = 0.2, ignored_by_productivity = 6},
      {type = "item", name = "slag", amount = 17, probability = 0.2, ignored_by_productivity = 8},
      {type = "item", name = "slag", amount = 5, probability = 0.4, ignored_by_productivity = 3},

    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "hematite-pressure-washing",
    main_product = "hematite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/hematite/hematite-1.png",
        scale = 0.9,
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 10,
    category = "hydraulic-washing",
    enabled = false,

    emissions_multiplier = 8,
    ingredients =
    {
      {type = "item", name = "hematite_rough", amount = 28},
      {type = "fluid", name = "water", amount = 400},
    },
    results = 
    {
      {type = "item", name = "hematite", amount = 4},
      {type = "item", name = "slag", amount = 15, probability = 0.3, ignored_by_productivity = 7},
      {type = "item", name = "slag", amount = 7, probability = 0.2, ignored_by_productivity = 6},
      {type = "item", name = "slag", amount = 17, probability = 0.2, ignored_by_productivity = 8},
      {type = "item", name = "slag", amount = 5, probability = 0.4, ignored_by_productivity = 3},

    },
    crafting_machine_tint =
    {
      primary = {r = 175, g = 63, b = 40, a = 1.000}, --rgb(175, 63, 40)
      secondary = {r = 210, g = 76, b = 35, a = 1.000}, --rgb(210, 76, 35)
      tertiary = {r = 191, g = 128, b = 46, a = 1.000}, --rgb(191, 128, 46)
      quaternary = {r = 184, g = 81, b = 43, a = 1.000}, --rgb(184, 81, 43)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "malachite-pressure-washing",
    main_product = "malachite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/malachite/malachite-1.png",
        scale = 0.9,
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 10,
    category = "hydraulic-washing",
    enabled = false,

    emissions_multiplier = 8,
    ingredients =
    {
      {type = "item", name = "malachite_rough", amount = 28},
      {type = "fluid", name = "water", amount = 400},
    },
    results = 
    {
      {type = "item", name = "malachite", amount = 4},
      {type = "item", name = "slag", amount = 15, probability = 0.3, ignored_by_productivity = 7},
      {type = "item", name = "slag", amount = 7, probability = 0.2, ignored_by_productivity = 6},
      {type = "item", name = "slag", amount = 17, probability = 0.2, ignored_by_productivity = 8},
      {type = "item", name = "slag", amount = 5, probability = 0.4, ignored_by_productivity = 3},

    },
    crafting_machine_tint =
    {
      primary = {r = 86, g = 246, b = 230, a = 1.000}, --rgb(86, 246, 230)
      secondary = {r = 56, g = 211, b = 190, a = 1.000}, --rgb(56, 211, 190)
      tertiary = {r = 112, g = 208, b = 205, a = 1.000}, --rgb(112, 208, 205)
      quaternary = {r = 48, g = 239, b = 194, a = 1.000}, --rgb(48, 239, 194)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "pyrite-pressure-washing",
    main_product = "pyrite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/pyrite/pyrite-1.png",
        scale = 0.9,
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 10,
    category = "hydraulic-washing",
    enabled = false,

    emissions_multiplier = 8,
    ingredients =
    {
      {type = "item", name = "pyrite_rough", amount = 28},
      {type = "fluid", name = "water", amount = 400},
    },
    results = 
    {
      {type = "item", name = "pyrite", amount = 4},
      {type = "item", name = "slag", amount = 15, probability = 0.3, ignored_by_productivity = 7},
      {type = "item", name = "slag", amount = 7, probability = 0.2, ignored_by_productivity = 6},
      {type = "item", name = "slag", amount = 17, probability = 0.2, ignored_by_productivity = 8},
      {type = "item", name = "slag", amount = 5, probability = 0.4, ignored_by_productivity = 3},

    },
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "siderite-pressure-washing",
    main_product = "siderite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/siderite/siderite-1.png",
        scale = 0.9,
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 10,
    category = "hydraulic-washing",
    enabled = false,

    emissions_multiplier = 8,
    ingredients =
    {
      {type = "item", name = "siderite_rough", amount = 28},
      {type = "fluid", name = "water", amount = 400},
    },
    results = 
    {
      {type = "item", name = "siderite", amount = 4},
      {type = "item", name = "slag", amount = 15, probability = 0.3, ignored_by_productivity = 7},
      {type = "item", name = "slag", amount = 7, probability = 0.2, ignored_by_productivity = 6},
      {type = "item", name = "slag", amount = 17, probability = 0.2, ignored_by_productivity = 8},
      {type = "item", name = "slag", amount = 5, probability = 0.4, ignored_by_productivity = 3},

    },
    crafting_machine_tint =
    {
      primary = {r = 175, g = 63, b = 40, a = 1.000}, --rgb(175, 63, 40)
      secondary = {r = 210, g = 76, b = 35, a = 1.000}, --rgb(210, 76, 35)
      tertiary = {r = 191, g = 128, b = 46, a = 1.000}, --rgb(191, 128, 46)
      quaternary = {r = 184, g = 81, b = 43, a = 1.000}, --rgb(184, 81, 43)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "tenorite-pressure-washing",
    main_product = "tenorite",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/ores_malcom/tenorite/tenorite-1.png",
        scale = 0.9,
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        scale = 0.6,
        shift = util.by_pixel(0, 0),
      }
    },

    energy_required = 10,
    category = "hydraulic-washing",
    enabled = false,

    emissions_multiplier = 8,
    ingredients =
    {
      {type = "item", name = "tenorite_rough", amount = 28},
      {type = "fluid", name = "water", amount = 400},
    },
    results = 
    {
      {type = "item", name = "tenorite", amount = 4},
      {type = "item", name = "slag", amount = 15, probability = 0.3, ignored_by_productivity = 7},
      {type = "item", name = "slag", amount = 7, probability = 0.2, ignored_by_productivity = 6},
      {type = "item", name = "slag", amount = 17, probability = 0.2, ignored_by_productivity = 8},
      {type = "item", name = "slag", amount = 5, probability = 0.4, ignored_by_productivity = 3},

    },
    crafting_machine_tint =
    {
      primary = {r = 26, g = 26, b = 24, a = 1.000}, --rgb(26, 26, 24)
      secondary = {r = 70, g = 71, b = 65, a = 1.000}, --rgb(70, 71, 65)
      tertiary = {r = 85, g = 82, b = 78, a = 1.000}, --rgb(85, 82, 78)
      quaternary = {r = 67, g = 65, b = 62, a = 1.000}, --rgb(67, 65, 62)
    },
    allow_productivity = true,
    allow_quality = true, 
    auto_recycle = false,
  },

  --TODO consider preserving gangue water to repurifiy and reuse. 

  {
    type = "recipe",
    name = "dangerous-fluoroketone",
    icons = 
    {
      {
        icon = "__space-age__/graphics/icons/fluid/fluoroketone-hot.png",
        scale = 0.9,
      }
    },
    category = "fluorination",
    subgroup = "aquilo-processes",
    --order = "z[fluoroketone]-e[fluoroketone]",
    auto_recycle = false,
    energy_required = 10,
    ingredients =
    {
      {type = "fluid", name = "fluorine", amount = 100},
      {type = "item", name = "solid-fuel", amount = 2},
      {type = "fluid", name = "petroleum-gas", amount = 100},
    },
    results = 
    {
      {type = "fluid", name = "fluoroketone-hot", amount = 40, temperature = 180},
      {type = "item", name = "fluorine-explosion", amount = 1, probability = 0.12, ignored_by_productivity = 9999},
    },
    allow_productivity = true,
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 0.365, g = 0.815, b = 0.334, a = 1.000}, -- #5dcf55ff
      secondary = {r = 0.772, g = 0.394, b = 0.394, a = 1.000}, -- #c46464ff
      tertiary = {r = 0.116, g = 0.116, b = 0.111, a = 1.000}, -- #1d1d1cff
      quaternary = {r = 0.395, g = 0.717, b = 0.563, a = 1.000}, -- #64b68fff
    }
  },

  
  --Crushing
  {
    type = "recipe",
    name = "terra-asteroid-crushing",
    icon = "__mineral-chemistry__/graphics/icons/terra-asteroid-crushing.png",
    category = "crushing",
    subgroup="space-crushing",
    order = "e-b-a",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "terra-asteroid-chunk", amount = 1},
    },
    energy_required = 5,
    results =
    {
      {type = "item", name = "stone", amount = 10},
      {type = "item", name = "terra-asteroid-chunk", amount = 1, probability = 0.3}
    },
    allow_productivity = true,
    allow_decomposition = false,
    allow_quality = true,
  },
  {
    type = "recipe",
    name = "terra-asteroid-reprocessing",
    icon = "__mineral-chemistry__/graphics/icons/terra-asteroid-reprocessing.png",
    category = "crushing",
    subgroup="space-crushing",
    order = "g-c-a",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "terra-asteroid-chunk", amount = 1},
    },
    energy_required = 5,
    results =
    {
      {type = "item", name = "terra-asteroid-chunk", amount = 1, probability = 0.98},
      {type = "item", name = "carbonic-asteroid-chunk", amount = 1, probability = 0.02},
    },
    allow_productivity = false,
    allow_decomposition = false,
    allow_quality = false,
  },

  --Import and essentially duplicated from Corrundum

  {
    type ="recipe",
    name ="dilute-acid-neutralization",
    category ="chemistry-or-cryogenics",
    icon ="__base__/graphics/icons/fluid/water.png",
    enabled = false,
    --subgroup = "sulfur",
    order ="d[other-chemistry]-b[pressurized-acid-neutralisation]",
    auto_recycle = false,
    enabled = false,
    surface_conditions =
    {
      {
        property ="pressure",
        min = 0,
        max = 6000
      }
    },
    ingredients =
    {
      {type ="item", name ="calcite", amount = 2},
      {type ="fluid", name ="sulfuric-acid-dilute", amount = 2000},
    },
    energy_required = 2,
    results =
    {
      {type ="fluid", name ="water", amount = 2000, temperature = 100}
    },
    allow_productivity = false,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.912, b = 0.036, a = 1.000}, -- #ffe809ff
      secondary = {r = 0.707, g = 0.797, b = 0.335, a = 1.000}, -- #b4cb55ff
      tertiary = {r = 0.681, g = 0.635, b = 0.486, a = 1.000}, -- #ada17bff
      quaternary = {r = 1.000, g = 0.804, b = 0.000, a = 1.000}, -- #ffcd00ff
    },
    factoriopedia_description ="We get enough heat energy from neutralization to boil water",
  },

  {
    type ="recipe",
    name ="destructive-dilute-acid-neutralization",
    category ="chemistry-or-cryogenics",
    subgroup = "fluid",
    icon ="__mineral-chemistry__/graphics/icons/fluid/sulfuric-acid-dilute-X.png",
    enabled = false,
    --subgroup = "sulfur",
    order ="d[other-chemistry]-b[pressurized-acid-neutralisation]",
    auto_recycle = false,
    enabled = false,
    surface_conditions =
    {
      {
        property ="pressure",
        min = 0,
        max = 6000
      }
    },
    ingredients =
    {
      {type ="item", name ="calcite", amount = 5},
      {type ="fluid", name ="sulfuric-acid-dilute", amount = 4000},
    },
    energy_required = 8,
    results =
    {
      --{}
    },
    allow_productivity = false,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.912, b = 0.036, a = 1.000}, -- #ffe809ff
      secondary = {r = 0.707, g = 0.797, b = 0.335, a = 1.000}, -- #b4cb55ff
      tertiary = {r = 0.681, g = 0.635, b = 0.486, a = 1.000}, -- #ada17bff
      quaternary = {r = 1.000, g = 0.804, b = 0.000, a = 1.000}, -- #ffcd00ff
    },
    factoriopedia_description ="Heat the water, and boil it away.",
  },


  {
    type ="recipe",
    name ="hot-water-to-steam",
    category ="chemistry-or-cryogenics",
    icon ="__base__/graphics/icons/fluid/water.png",
    enabled = false,
    subgroup ="fluid-recipes",
    order ="d[other-chemistry]-c[pressurized-acid-neutralisation]",
    auto_recycle = false,
    enabled = false,
    surface_conditions =
    {
      {
        property ="pressure",
        min = 0,
        max = 6000
      }
    },
    ingredients =
    {
      {type ="item", name ="solid-fuel", amount = 5},
      {type ="fluid", name ="water", amount = 90, temperature = 100},
    },
    energy_required = 2,
    results =
    {
      {type ="fluid", name ="steam", amount = 1000, temperature = 500},
    },
    allow_productivity = false,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    crafting_machine_tint =
    {
      primary = {r = 98, g = 168, b = 230, a = 1.000}, --rgb(98, 168, 230)
      secondary = {r = 85, g = 177, b = 203, a = 1.000}, --rgb(85, 177, 203)
      tertiary = {r = 123, g = 165, b = 173, a = 1.000}, --rgb(123, 165, 173)
      quaternary = {r = 0, g = 179, b = 255, a = 1.000}, --rgb(0, 179, 255)
    },

  },
  {
      type ="recipe",
      name ="sulfur-combustion",
      --subgroup = "sulfur",
      order = "a",
      category ="chemistry",
      icon ="__mineral-chemistry__/graphics/icons/fluid/sulfur-dioxide.png",
      enabled = false,
      surface_conditions =
      {
        {
          property ="pressure",
          min = 300,
          max = 110000
        }
      },
      ingredients =
      {

        {type ="item", name ="sulfur", amount = 1}

      },

      energy_required = 1,
      results =
      {
        {type ="fluid", name ="sulfur-dioxide", amount = 50}
      },
      allow_productivity = true,
      allow_quality = false,
      main_product ="sulfur-dioxide",
      factoriopedia_description ="Burning sulfur lets us get this gas, which we can use to make both sulfuric acid and water.",
      crafting_machine_tint =
      {
        primary = {r = 0.965, g = 0.482, b = 0.338, a = 1.000}, -- #f67a56ff
        secondary = {r = 0.831, g = 0.560, b = 0.222, a = 1.000}, -- #d38e38ff
        tertiary = {r = 0.728, g = 0.818, b = 0.443, a = 1.000}, -- #b9d070ff
        quaternary = {r = 0.939, g = 0.763, b = 0.191, a = 1.000}, -- #efc230ff
      },
  },
  {
      type ="recipe",
      name ="sulfur-reduction",
      category ="chemistry",
      --subgroup = "sulfur",
      order = "b",
      icon ="__base__/graphics/icons/fluid/water.png",
      enabled = false,
      ingredients =
      {

        {type ="fluid", name ="hydrogen-sulfide", amount = 50},
        {type ="fluid", name ="sulfur-dioxide", amount = 50},
      },

      energy_required = 15,
      results =
      {
        {type ="item", name ="sulfur", amount = 2},
        {type ="fluid", name ="water", amount = 100},
      },
      allow_productivity = false,
      allow_quality = false,
      maximum_productivity = 1,
      main_product ="water",
      factoriopedia_description ="Sulfur is reduced to a zero oxidation state, while water is formed.",
      crafting_machine_tint =
      {
        primary = {r = 246, g = 255, b = 0, a = 1.000}, --rgb(246, 255, 0)
        secondary = {r = 0.211, g = 195, b = 56, a = 1.000}, --rgb(211, 195, 56)
        tertiary = {r = 225, g = 232, b = 27, a = 1.000}, --rgb(225, 232, 27)
        quaternary = {r = 239, g = 229, b = 048.191, a = 1.000}, --rgb(239, 229, 48)
      },
  },
  {
    type ="recipe",
    name ="hydrogen-sulfide-combustion",
    --subgroup = "sulfur",
    order = "b",
    category ="chemistry",
    icon ="__base__/graphics/icons/fluid/water.png",
    enabled = false,
    ingredients =
    {

      {type ="fluid", name ="hydrogen-sulfide", amount = 100},
    },

    surface_conditions =
    {
      {
        property ="pressure",
        min = 300,
        max = 110000
      }
    },

    energy_required = 10,
    results =
    {
      {type ="fluid", name ="sulfur-dioxide", amount = 200},
      {type ="fluid", name ="water", amount = 200},
    },
    allow_productivity = false,
    allow_quality = false,
    maximum_productivity = 1,
    main_product ="water",
    factoriopedia_description ="Combustion of hydrogen sulfide gives us more components to make sulfuric acid.",
    crafting_machine_tint =
    {
      primary = {r = 86, g = 110, b = 246, a = 1.000}, --rgb(86, 110, 246)
      secondary = {r = 61, g = 56, b = 211, a = 1.000}, --rgb(61, 56, 211)
      tertiary = {r = 138, g = 112, b = 208, a = 1.000}, --rgb(138, 112, 208)
      quaternary = {r = 48, g = 48, b = 239, a = 1.000}, --rgb(48, 48, 239)
    },
  },



  {
      type ="recipe",
      name ="force-reduction-iron",
      --subgroup = "sulfur",
      order = "g",
      category ="chemistry",
      icon ="__base__/graphics/icons/iron-ore.png",
      enabled = false,
      ingredients =
      {

        --{type ="item", name ="iron-plate", amount = 1},
        {type ="fluid", name ="iron-sulfate-solution", amount = 300},
        {type ="fluid", name ="water", amount = 100}, --Why do I need more water, its aqueous already. Oh for washing the products...
      },

      energy_required = 10,
      results =
      {
        {type ="fluid", name ="sulfuric-acid-dilute", amount = 350}, --some fluid lost.
        {type ="item", name ="iron-ore", amount = 7}
      },
      allow_productivity = true,
      auto_recycle = false,
      maximum_productivity = 1,
      main_product ="iron-ore",
      --factoriopedia_description ="We can use voltage to pump electronics into the ionic solution. These electrons reduce aqueous ferric ions in to pure iron. However, an iron plate must be used to seed crystal growth, and of course the pure product must be shaped back into plates.",
      crafting_machine_tint =
      {
        primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
        secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
        tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
        quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
      },
  },
  {
      type ="recipe",
      name ="force-reduction-copper",
      --subgroup = "sulfur",
      order = "g",
      category ="chemistry",
      icon ="__base__/graphics/icons/copper-ore.png",
      enabled = false,
      ingredients =
      {

        --{type ="item", name ="copper-plate", amount = 1},
        {type ="fluid", name ="copper-sulfate-solution", amount = 300},
        {type ="fluid", name ="water", amount = 100},
      },

      energy_required = 12,
      results =
      {
        {type ="fluid", name ="sulfuric-acid-dilute", amount = 350},
        {type ="item", name ="copper-ore", amount = 3}
      },
      allow_productivity = true, 
      maximum_productivity = 1,
      main_product ="copper-ore",
      auto_recycle = false,
      --factoriopedia_description ="Similiar to reduction of ferric sulfate, we pump electrons in and they reduce copper ions.",
      crafting_machine_tint =
      {
        primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
        secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
        tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
        quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
      },
  },
  {
    type ="recipe",
    name ="calcium-sulfate",
    category ="organic-or-chemistry",
    --subgroup = "sulfur",
    order = "j",
    icon ="__mineral-chemistry__/graphics/icons/calcium-sulfate.png",
    enabled = false,
    ingredients =
    {

      {type ="item", name ="calcite", amount = 2},
      {type ="fluid", name ="sulfuric-acid-dilute", amount = 100},
    },

    energy_required = 10,
    results =
    {
      {type ="item", name ="calcium-sulfate", amount = 2},
      {type ="fluid", name ="water", amount = 100}
    },
    allow_productivity = false, 
    maximum_productivity = 1,
    main_product ="calcium-sulfate",
    --factoriopedia_description ="We neutralize dilute sulfuric acid and collect the salt with evaporation. Adding calcite directly to concentrated sulfuric acid releases a lot of energy, making it difficult to collect a salt that way. Most of the time here is spent drying out the salt.",
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
    auto_recycle = false,
  },
  {
      type ="recipe",
      name ="sulfuric-acid-dilution",
      --subgroup = "sulfur",
      order = "b",
      category ="chemistry",
      icon ="__mineral-chemistry__/graphics/icons/fluid/sulfuric-acid-dilute.png",
      enabled = false,
      ingredients =
      {

        {type ="fluid", name ="sulfuric-acid", amount = 100},
        {type ="fluid", name ="water", amount = 400},
      },

      energy_required = 10,
      results =
      {
        {type ="fluid", name ="sulfuric-acid-dilute", amount = 500},
      },
      allow_productivity = false,
      allow_quality = false, 
      maximum_productivity = 1,
      main_product ="sulfuric-acid-dilute",
      factoriopedia_description ="Add acid to water to dilute safely, not the otherway around.",
      crafting_machine_tint =
      {
        primary = {r = 1.000, g = 0.642, b = 0.261, a = 1.000}, --rgb(240, 194, 146)
        secondary = {r = 1.000, g = 0.722, b = 0.376, a = 1.000}, --rgb(248, 209, 163)
        tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, --rgb(219, 186, 171)
        quaternary = {r = 1.000, g = 0.494, b = 0.271, a = 1.000}, --rgb(245, 174, 143)
      },
      auto_recycle = false,
  },
  {
    type ="recipe",
    name ="sulfuric-acid-concentration-alt",
    category ="chemistry",
    --subgroup = "sulfur",
    order = "b",
    icon ="__base__/graphics/icons/fluid/sulfuric-acid.png",
    enabled = false,
    ingredients =
    {

      {type ="fluid", name ="sulfuric-acid-dilute", amount = 500},
    },

    energy_required = 60,
    results =
    {
      {type ="fluid", name ="sulfuric-acid", amount = 100},
    },
    allow_productivity = false, 
    allow_quality = false,
    maximum_productivity = 1,
    main_product ="sulfuric-acid",
    factoriopedia_description ="We spend alot of energy boiling off water, and don't bother to catch it.",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.642, b = 0.261, a = 1.000}, -- #ffa342ff
      secondary = {r = 1.000, g = 0.722, b = 0.376, a = 1.000}, -- #ffb85fff
      tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, -- #d9a892ff
      quaternary = {r = 1.000, g = 0.494, b = 0.271, a = 1.000}, -- #ff7e45ff
    },
    auto_recycle = false,
  },
  {
      type ="recipe",
      name ="calcium-sulfate-production-alt",
      category ="chemistry",
      icon ="__mineral-chemistry__/graphics/icons/calcium-sulfate.png",
      --subgroup = "sulfur",
      order = "j",
      enabled = false,
      ingredients =
      {

        {type ="item", name ="calcite", amount = 2},
        {type ="fluid", name ="sulfur-dioxide", amount = 50},
      },

      energy_required = 5,
      results =
      {
        {type ="item", name ="calcium-sulfate", amount = 2},
      },
      allow_productivity = false, 
      maximum_productivity = 1,
      main_product ="calcium-sulfate",
      factoriopedia_description ="Sulfur-dioxide and calcium carbonate react to form calcium sulfate and carbon dioxide.",
      crafting_machine_tint =
      {
        primary = {r = 1.000, g = 0.642, b = 0.261, a = 1.000}, --rgb(240, 194, 146)
        secondary = {r = 1.000, g = 0.722, b = 0.376, a = 1.000}, --rgb(248, 209, 163)
        tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, --rgb(219, 186, 171)
        quaternary = {r = 1.000, g = 0.494, b = 0.271, a = 1.000}, --rgb(245, 174, 143)
      },
      auto_recycle = false,
  },




  --Thurster and oxider barrel and unbarrel 
  --Note that you still have to make it in space.
  --[[
  {
    type = "recipe",
    name = "thruster-fluid-barrel-p",
    category = "crafting-with-fluid",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/thruster-barrel-fill.png",
        scale = 0.9,
      }
    },
    auto_recycle = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "thruster-fuel", amount = 200},
      {type = "item", name = "barrel", amount = 1},
    },
    results = 
    {
      {type = "item", name = "thruster-barrel", amount = 1},
    },
    allow_productivity = false,
    allow_quality = false,
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 175, g = 63, b = 40, a = 1.000}, --rgb(175, 63, 40) 
      secondary = {r = 210, g = 76, b = 35, a = 1.000}, --rgb(210, 76, 35)
      tertiary = {r = 191, g = 87, b = 46, a = 1.000}, --rgb(191, 87, 46)
      quaternary = {r = 184, g = 81, b = 43, a = 1.000}, --rgb(184, 81, 43)
    },
  },
  {
    type = "recipe",
    name = "thruster-fluid-barrel-empty-p",
    category = "crafting-with-fluid",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/thruster-barrel-empty.png",
        scale = 0.9,
      }
    },
    auto_recycle = false,
    energy_required = 1,
    ingredients =
    {
      {type = "item", name = "thruster-barrel", amount = 1},
    },
    results = 
    {
      {type = "fluid", name = "thruster-fuel", amount = 200},
      {type = "item", name = "barrel", amount = 1},
    },
    allow_productivity = false,
    allow_quality = false,
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 175, g = 63, b = 40, a = 1.000}, --rgb(175, 63, 40) 
      secondary = {r = 210, g = 76, b = 35, a = 1.000}, --rgb(210, 76, 35)
      tertiary = {r = 191, g = 87, b = 46, a = 1.000}, --rgb(191, 87, 46)
      quaternary = {r = 184, g = 81, b = 43, a = 1.000}, --rgb(184, 81, 43)
    },
  },

  {
    type = "recipe",
    name = "oxidizer-fluid-barrel-p",
    category = "crafting-with-fluid",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/oxidizer-barrel-fill.png",
        scale = 0.9,
      }
    },
    auto_recycle = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "thruster-oxidizer", amount = 200},
      {type = "item", name = "barrel", amount = 1},
    },
    results = 
    {
      {type = "item", name = "oxidizer-barrel", amount = 1},
    },
    allow_productivity = false,
    allow_quality = false,
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
  },
  {
    type = "recipe",
    name = "oxidizer-fluid-barrel-empty-p",
    category = "crafting-with-fluid",
    icons = 
    {
      {
        icon = "__mineral-chemistry__/graphics/icons/oxidizer-barrel-empty.png",
        scale = 0.9,
      }
    },
    auto_recycle = false,
    energy_required = 1,
    ingredients =
    {
      {type = "item", name = "oxidizer-barrel", amount = 1},
    },
    results = 
    {
      {type = "fluid", name = "thruster-oxidizer", amount = 200},
      {type = "item", name = "barrel", amount = 1},
    },
    allow_productivity = false,
    allow_quality = false,
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 86, g = 161, b = 246, a = 1.000}, --rgb(86, 161, 246)
      secondary = {r = 56, g = 136, b = 211, a = 1.000}, --rgb(56, 136, 211)
      tertiary = {r = 112, g = 146, b = 208, a = 1.000}, --rgb(112, 146, 208)
      quaternary = {r = 48, g = 147, b = 239, a = 1.000}, --rgb(48, 147, 239)
    },
  },
  --]]



})