

data:extend(
{
   {
      type = "fluid",
      name = "glycerol",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/glycerol-64.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "2.35kJ",
      base_color = {r = 0, g = 170, b = 200}, --rgb(0, 173, 200)
      flow_color = {r = 0, g = 170, b = 200}, --rgb(0, 170, 200)
      auto_barrel = true,
   }, 
   {
      type = "fluid",
      name = "fatty-acids",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/alpha-linolenic-acid-64.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "1.35kJ",
      base_color = {r = 200, g = 200, b = 0}, --rgb(200, 200, 0)
      flow_color = {r = 200, g = 200, b = 0}, --rgb(200, 200, 0)
      auto_barrel = true,
   }, 
   {
      type = "fluid",
      name = "covellite-froth",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/blue.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "1.35kJ",
      base_color = {r = 123, g = 123, b = 180, a = 1.000}, --rgb(123, 123, 180) 
      flow_color = {r = 123, g = 123, b = 180, a = 1.000}, --rgb(123, 123, 180) 
      auto_barrel = true,
   }, 
   {
      type = "fluid",
      name = "pyrite-froth",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/blue-gray.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "1.35kJ",
      base_color = {r = 202, g = 211, b = 120, a = 1.000}, --rgb(202, 211, 120) 
      flow_color = {r = 202, g = 211, b = 120, a = 1.000}, --rgb(202, 211, 120) 
      auto_barrel = true,
   },
   {
      type = "fluid",
      name = "tenorite-froth",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/black.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "1.35kJ",
      base_color = {r = 34, g = 42, b = 34, a = 1.000}, --rgb(34, 42, 34) 
      flow_color = {r = 34, g = 42, b = 34, a = 1.000}, --rgb(34, 42, 34) 
      auto_barrel = true,
   }, 
   {
      type = "fluid",
      name = "malachite-froth",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/green.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "1.35kJ",
      base_color = {r = 34, g = 206, b = 89, a = 1.000}, --rgb(34, 206, 89)
      flow_color = {r = 34, g = 206, b = 89, a = 1.000}, --rgb(34, 206, 89)
      auto_barrel = true,
   }, 
   {
      type = "fluid",
      name = "siderite-froth",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/fluid-droplet-mineral-oil.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "1.35kJ",
      base_color = {r = 210, g = 69, b = 69, a = 1.000}, --rgb(210, 69, 69)
      flow_color = {r = 210, g = 69, b = 69, a = 1.000}, --rgb(210, 69, 69)
      auto_barrel = true,
   }, 
   {
      type = "fluid",
      name = "hematite-froth",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/red.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "1.35kJ",
      base_color = {r = 211, g = 120, b = 120, a = 1.000}, --rgb(211, 120, 120)
      flow_color = {r = 211, g = 120, b = 120, a = 1.000}, --rgb(211, 120, 120)
      auto_barrel = true,
   }, 
   {
      type = "fluid",
      name = "hydrofluoric-acid",
      icons = 
      {
         {
            icon = "__mineral-chemistry__/graphics/icons/fluid/molecule-hydrofluoric-acid.png",
            icon_size = 64,
         }
      },
      subgroup = "fluid",
      order = "z",
      default_temperature = 21,
      max_temperature = 100,
      heat_capacity = "4.35kJ",
      base_color = {r = 120, g = 211, b = 144, a = 1.000}, --rgb(120, 211, 144) 
      flow_color = {r = 120, g = 211, b = 144, a = 1.000}, --rgb(120, 211, 144) 
      auto_barrel = true,
   }, 
   {
    type = "fluid",
    name = "copper-sulfate-solution",
    icon = "__mineral-chemistry__/graphics/icons/fluid/copper-sulfate-solution.png",
    subgroup = "fluid",
    default_temperature = 21,
    max_temperature = 100,
    heat_capacity = "4.184kJ",
    base_color = {0.22, 0.1, 0.9},
    flow_color = {0.22, 0.4, 1.35},
    auto_barrel = true,
   },
   {
    type = "fluid",
    name = "iron-sulfate-solution",
    icon = "__mineral-chemistry__/graphics/icons/fluid/iron-sulfate-solution.png",
    subgroup = "fluid",
    default_temperature = 21,
    max_temperature = 100,
    heat_capacity = "4.184kJ",
    base_color = {0.2, 0.8, 0.63},
    flow_color = {0.2, 1.0, 0.8},
    auto_barrel = true,
   },
   {
    type = "fluid",
    name = "sulfuric-acid-dilute",
    icon = "__mineral-chemistry__/graphics/icons/fluid/sulfuric-acid-dilute.png",
    subgroup = "fluid",
    default_temperature = 21,
    max_temperature = 100,
    heat_capacity = "4.184kJ",
    base_color = {0.73, 0.73, 0.57},
    flow_color = {1.0, 1.0, 0.8},
    auto_barrel = true,
   },
   {
    type = "fluid",
    name = "hydrogen-sulfide",
    icon = "__mineral-chemistry__/graphics/icons/fluid/hydrogen-sulfide.png",
    subgroup = "fluid",
    default_temperature = 21,
    max_temperature = 200,
    heat_capacity = "34.2J",
    base_color = {0, 0.15, 0.4},
    flow_color = {0, 0.35, 0.7},
    auto_barrel = true,
   },
   {
    type = "fluid",
    name = "sulfur-dioxide",
    icon = "__mineral-chemistry__/graphics/icons/fluid/sulfur-dioxide.png",
    subgroup = "fluid",
    default_temperature = 21,
    max_temperature = 200,
    heat_capacity = "39.84J",
    base_color = {0, 0.15, 0.4},
    flow_color = {0, 0.35, 0.7},
    auto_barrel = true,
   },

 

}

)