local resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

local function resource(resource_parameters, autoplace_parameters, graphics_parameters) --repurpose mining visualization tint. change the naming scheme from just being the ore name
    return
    {
        type = "resource",
        name = resource_parameters.name,
        icon = "__mineral-chemistry__/graphics/icons/" .. graphics_parameters.icon_subfolder .. "/" .. graphics_parameters.icon_image,
        flags = {"placeable-neutral"},
        order="a-b-"..resource_parameters.order,
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable = resource_parameters.minable or
        {
        --mining_particle = resource_parameters.name .. "-particle",
        mining_time = resource_parameters.mining_time,
        result = resource_parameters.name
        },
        category = resource_parameters.category,
        subgroup = resource_parameters.subgroup,
        walking_sound = resource_parameters.walking_sound,
        collision_mask = resource_parameters.collision_mask,
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        resource_patch_search_radius = resource_parameters.resource_patch_search_radius,
        autoplace = autoplace_parameters.probability_expression ~= nil and
        {
        --control = resource_parameters.name,
        order = resource_parameters.order,
        probability_expression = autoplace_parameters.probability_expression,
        richness_expression = autoplace_parameters.richness_expression
        }
        or resource_autoplace.resource_autoplace_settings
        {
        name = resource_parameters.name,
        order = resource_parameters.order,
        autoplace_control_name = resource_parameters.autoplace_control_name,
        base_density = autoplace_parameters.base_density,
        base_spots_per_km = autoplace_parameters.base_spots_per_km2,
        regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
        starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
        candidate_spot_count = autoplace_parameters.candidate_spot_count,
        tile_restriction = autoplace_parameters.tile_restriction
        },
        stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
        sheet =
        {
            --filename = "__mineral-chemistry__/graphics/entity/" .. resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
            filename = "__mineral-chemistry__/graphics/entity/" .. graphics_parameters.entity_subfolder .. "/" .. graphics_parameters.entity_image_sheet,
            priority = "extra-high",
            size = 128,
            frame_count = 8,
            variation_count = 8,
            scale = 0.5,
            tint = resource_parameters.mining_visualisation_tint,
        }
        },
        map_color = resource_parameters.map_color,
        --mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
        mining_visualisation_tint = resource_parameters.map_color,
        --factoriopedia_simulation = resource_parameters.factoriopedia_simulation
    }
end

local function create_procedural_ore(input_name, input_tint)
  return resource(
    {
      name = input_name,
      order = "b",
      map_color = {r = 200, b = 200, g = 200}, --tint can look too close to tiles.
      mining_time = 1,
      walking_sound = sounds.ore,
      mining_visualisation_tint = input_tint, --rgb(211, 120, 120)  --Color for ore 
      --factoriopedia_simulation = simulations.factoriopedia_calcite,
    },
    {
      probability_expression = 0
    },
    {
      icon_subfolder = "",
      icon_image = "procedural-ore-1.png",
      entity_subfolder = "procedural-ore",
      entity_image_sheet = "procedural-ore.png",
    }
  )
end



data:extend(
{


    --covellite
    resource(
        {
          name = "covellite",
          order = "b",
          map_color = {123,123,180},
          mining_time = 1,
          walking_sound = sounds.ore,
          mining_visualisation_tint = {r = 123, g = 123, b = 180, a = 1.000}, --rgb(123, 123, 180)  --Color for ore 
          --factoriopedia_simulation = simulations.factoriopedia_calcite,
        },
        {
          probability_expression = 0
        },
        {
          icon_subfolder = "ores_malcom/covellite",
          icon_image = "covellite-1.png",
          entity_subfolder = "procedural-ore",
          entity_image_sheet = "copper-ore-desat.png",
        }
    ),
    --malachite
    resource(
        {
          name = "malachite",
          order = "b",
          map_color = {34,206,89},
          mining_time = 1,
          walking_sound = sounds.ore,
          mining_visualisation_tint = {r = 34, g = 206, b = 89, a = 1.000}, --rgb(34, 206, 89)  --Color for ore 
          --factoriopedia_simulation = simulations.factoriopedia_calcite,
        },
        {
          probability_expression = 0
        },
        {
          icon_subfolder = "ores_malcom/malachite",
          icon_image = "malachite-1.png",
          entity_subfolder = "procedural-ore",
          entity_image_sheet = "copper-ore-desat.png",
        }
    ),
    --tenorite
    resource(
        {
          name = "tenorite",
          order = "b",
          map_color = {34,42,34},
          mining_time = 1,
          walking_sound = sounds.ore,
          mining_visualisation_tint = {r = 34, g = 42, b = 34, a = 1.000}, --rgb(34, 42, 34)  --Color for ore 
          --factoriopedia_simulation = simulations.factoriopedia_calcite,
        },
        {
          probability_expression = 0
        },
        {
          icon_subfolder = "ores_malcom/tenorite",
          icon_image = "tenorite-1.png",
          entity_subfolder = "procedural-ore",
          entity_image_sheet = "copper-ore-desat.png",
        }
    ),
    --pyrite
    resource(
      {
        name = "pyrite",
        order = "b",
        map_color = {202,211,120},
        mining_time = 1,
        walking_sound = sounds.ore,
        mining_visualisation_tint = {r = 202, g = 211, b = 120, a = 1.000}, --rgb(202, 211, 120)  --Color for ore 
        --factoriopedia_simulation = simulations.factoriopedia_calcite,
      },
      {
        probability_expression = 0
      },
      {
        icon_subfolder = "ores_malcom/pyrite",
        icon_image = "pyrite-1.png",
        entity_subfolder = "procedural-ore",
        entity_image_sheet = "iron-ore-desat.png",
      }
    ),
    --siderite
    resource(
      {
        name = "siderite",
        order = "b",
        map_color = {210,69,69},
        mining_time = 1,
        walking_sound = sounds.ore,
        mining_visualisation_tint = {r = 210, g = 69, b = 69, a = 1.000}, --rgb(210, 69, 69)  --Color for ore 
        --factoriopedia_simulation = simulations.factoriopedia_calcite,
      },
      {
        probability_expression = 0
      },
      {
        icon_subfolder = "ores_malcom/siderite",
        icon_image = "siderite-1.png",
        entity_subfolder = "procedural-ore",
        entity_image_sheet = "iron-ore-desat.png",
      }
    ),
    --hematite
    resource(
      {
        name = "hematite",
        order = "b",
        map_color = {211,120,120},
        mining_time = 1,
        walking_sound = sounds.ore,
        mining_visualisation_tint = {r = 211, g = 120, b = 120, a = 1.000}, --rgb(211, 120, 120)  --Color for ore 
        --factoriopedia_simulation = simulations.factoriopedia_calcite,
      },
      {
        probability_expression = 0
      },
      {
        icon_subfolder = "ores_malcom/hematite",
        icon_image = "hematite-1.png",
        entity_subfolder = "procedural-ore",
        entity_image_sheet = "iron-ore-desat.png",
      }
    ),

    --ROUGH ORES

    --covellite_rough
    resource(
        {
          name = "covellite_rough",
          order = "b",
          map_color = {60,60,90},
          mining_time = 1,
          walking_sound = sounds.ore,
          mining_visualisation_tint = {r = 60, g = 60, b = 90, a = 1.000}, --rgb(123, 123, 180)  --Color for ore 
          --factoriopedia_simulation = simulations.factoriopedia_calcite,
        },
        {
          probability_expression = 0
        },
        {
          icon_subfolder = "ores_malcom/low-quality/covellite",
          icon_image = "covellite-1.png",
          entity_subfolder = "procedural-ore",
          entity_image_sheet = "copper-ore-desat.png",
        }
    ),
    --malachite_rough
    resource(
        {
          name = "malachite_rough",
          order = "b",
          map_color = {17,100,45},
          mining_time = 1,
          walking_sound = sounds.ore,
          mining_visualisation_tint = {r = 17, g = 100, b = 45, a = 1.000}, --rgb(34, 206, 89)  --Color for ore 
          --factoriopedia_simulation = simulations.factoriopedia_calcite,
        },
        {
          probability_expression = 0
        },
        {
          icon_subfolder = "ores_malcom/low-quality/malachite",
          icon_image = "malachite-1.png",
          entity_subfolder = "procedural-ore",
          entity_image_sheet = "copper-ore-desat.png",
        }
    ),
    --tenorite_rough
    resource(
        {
          name = "tenorite_rough",
          order = "b",
          map_color = {80,80,80},
          mining_time = 1,
          walking_sound = sounds.ore,
          mining_visualisation_tint = {r = 80, g = 80, b = 80, a = 1.000}, --rgb(34, 42, 34)  --Color for ore 
          --factoriopedia_simulation = simulations.factoriopedia_calcite,
        },
        {
          probability_expression = 0
        },
        {
          icon_subfolder = "ores_malcom//low-quality/tenorite",
          icon_image = "tenorite-1.png",
          entity_subfolder = "procedural-ore",
          entity_image_sheet = "copper-ore-desat.png",
        }
    ),
    --pyrite_rough
    resource(
      {
        name = "pyrite_rough",
        order = "b",
        map_color = {100,105,60},
        mining_time = 1,
        walking_sound = sounds.ore,
        mining_visualisation_tint = {r = 100, g = 105, b = 60, a = 1.000}, --rgb(202, 211, 120)  --Color for ore 
        --factoriopedia_simulation = simulations.factoriopedia_calcite,
      },
      {
        probability_expression = 0
      },
      {
        icon_subfolder = "ores_malcom/low-quality/pyrite",
        icon_image = "pyrite-1.png",
        entity_subfolder = "procedural-ore",
        entity_image_sheet = "iron-ore-desat.png",
      }
    ),
    --siderite_rough
    resource(
      {
        name = "siderite_rough",
        order = "b",
        map_color = {105,35,35},
        mining_time = 1,
        walking_sound = sounds.ore,
        mining_visualisation_tint = {r = 105, g = 35, b = 35, a = 1.000}, --rgb(210, 69, 69)  --Color for ore 
        --factoriopedia_simulation = simulations.factoriopedia_calcite,
      },
      {
        probability_expression = 0
      },
      {
        icon_subfolder = "ores_malcom/low-quality/siderite",
        icon_image = "siderite-1.png",
        entity_subfolder = "procedural-ore",
        entity_image_sheet = "iron-ore-desat.png",
      }
    ),
    --hematite_rough
    resource(
      {
        name = "hematite_rough",
        order = "b",
        map_color = {100,60,60},
        mining_time = 1,
        walking_sound = sounds.ore,
        mining_visualisation_tint = {r = 100, g = 60, b = 60, a = 1.000}, --rgb(211, 120, 120)  --Color for ore 
        --factoriopedia_simulation = simulations.factoriopedia_calcite,
      },
      {
        probability_expression = 0
      },
      {
        icon_subfolder = "ores_malcom/low-quality/hematite",
        icon_image = "hematite-1.png",
        entity_subfolder = "procedural-ore",
        entity_image_sheet = "iron-ore-desat.png",
      }
    ),

    --Fluorite
    resource(
      {
        name = "fluorite",
        order = "b",
        map_color = {120,211,144},
        mining_time = 1,
        walking_sound = sounds.ore,
        mining_visualisation_tint = {r = 120, g = 211, b = 144, a = 1.000}, --rgb(120, 211, 144)  --Color for ore 
        --factoriopedia_simulation = simulations.factoriopedia_calcite,
      },
      {
        probability_expression = 0
      },
      {
        icon_subfolder = "ores_malcom/fluorite",
        icon_image = "fluorite-1.png",
        entity_subfolder = "procedural-ore",
        entity_image_sheet = "calcite-desat.png",
      }
    ),


})