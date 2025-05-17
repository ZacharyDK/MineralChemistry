local asteroid_util = require("__mineral-chemistry__.prototypes.planet.asteroid-spawn-definitions")

local mineral_map = {
    "covellite",
    "malachite",
    "tenorite",
    "pyrite",
    "siderite",
    "hematite",
    "fluorite",
    "covellite_rough",
    "malachite_rough",
    "tenorite_rough",
    "pyrite_rough",
    "siderite_rough",
    "hematite_rough",
}

if (settings.startup["add-advanced-minerals-to-nauvis"].value) then

    local nauvis = data.raw["planet"]["nauvis"]
    local nauvis_map_gen = data.raw["planet"]["nauvis"].map_gen_settings

    for k,v in pairs(mineral_map) do
      local prob_key = "entity:" .. v .. ":probability"
      local prob_value = "procedural_" .. v .. "_probability"
      local richness_key = "entity:" .. v .. ":richness"
      local richness_value = "procedural_" .. v .. "_richness"
      local autoplace_control_key = v
      --nauvis_map_gen.property_expression_names[prob_key] = prob_value
      --nauvis_map_gen.property_expression_names[richness_key] = richness_value
      nauvis_map_gen.autoplace_controls[autoplace_control_key] = {}
      nauvis_map_gen.autoplace_settings.entity.settings[autoplace_control_key] = {}
      --nauvis_map_gen.autoplace_settings["entity"][autoplace_control_key] = {}
    end

end

if (settings.startup["override-metallic-advanced-asteroid-crushing"].value) then
  data.raw.recipe["advanced-metallic-asteroid-crushing"]["results"] =
  {
    {type = "item", name = "iron-ore", amount = 10},
    {type = "item", name = "tenorite", amount = 4},
    {type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.05}
  }

end

if (settings.startup["override-vulcanus-production"].value) then

  data.raw.recipe["molten-iron-from-lava"]["results"] =
  {
    {type = "item", name = "hematite", amount = 25},
    {type = "item", name = "tenorite", amount = 19},
    {type = "item", name = "stone", amount = 10},
  }

  data.raw.recipe["molten-copper-from-lava"]["results"] =
  {
    {type = "item", name = "hematite", amount = 25},
    {type = "item", name = "tenorite", amount = 19},
    {type = "item", name = "stone", amount = 10},
  }



  data.raw.recipe["molten-iron-from-lava"].localised_name = {"", "Hematite and tenorite from lava"}
  data.raw.recipe["molten-copper-from-lava"].localised_name = {"", "Hematite and tenorite from lava"}

  --Calcite used as a flux to remove immpurities in steel making. 

  data.raw.recipe["casting-steel"].energy_required = 32
  
  data.raw.recipe["casting-steel"].ingredients = 
  {
    {type = "fluid", name = "molten-iron", amount = 300, fluidbox_multiplier = 100},
    {type = "item", name = "calcite", amount = 1},
  }

  data.raw.recipe["casting-steel"].results = 
  {
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "slag", amount_min = 1, amount_max = 3},
  }

end

if (settings.startup["override-steel-plate"].value) then
  data.raw["furnace"]["stone-furnace"].result_inventory_size = 2
  data.raw["furnace"]["steel-furnace"].result_inventory_size = 2
  data.raw["furnace"]["electric-furnace"].result_inventory_size = 2


  data.raw["recipe"]["steel-plate"].results = 
  {
    {type = "item", name = "steel-plate", amount = 1},
    {type = "item", name = "slag", amount = 1, probability = 0.2},
  }
  data.raw["recipe"]["steel-plate"].icons = 
  {
    {
      icon = "__base__/graphics/icons/steel-plate.png"
    }
  }

end