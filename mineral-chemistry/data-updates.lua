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
