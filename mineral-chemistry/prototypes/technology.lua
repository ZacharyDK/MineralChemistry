require("util")

--local function gather_all_recipes()

--end


data:extend({
    {
        type = "technology",
        name = "terra-asteroid-processsing",
        icon = "__mineral-chemistry__/graphics/icons/terra-asteroid-chunk.png",
        icon_size = 64, --default is 256


        essential = true,
        effects =
        {   

            {
              type = "unlock-recipe",
              recipe = "terra-asteroid-crushing",
            },
            {
              type = "unlock-recipe",
              recipe = "terra-asteroid-reprocessing",
            },

       

        },
        prerequisites = 
        {
          "planet-discovery-fulgora",
          "planet-discovery-gleba",
          "planet-discovery-vulcanus",
          "electromagnetic-science-pack",
          "agricultural-science-pack",
          "metallurgic-science-pack",
        },
        unit =
        {
          count = 4000,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
          },
          time = 60
        }
    },
    {
      type = "technology",
      name = "expert-mineral-processing",
      icon = "__mineral-chemistry__/graphics/icons/froth-floatator.png",
      icon_size = 64, --default is 256
      essential = true,
      effects =
      {   

          {
              type = "unlock-recipe",
              recipe = "froth-floatation-plant",
          },

          {
            type = "unlock-recipe",
            recipe = "blast-furnace",
          },

          {
            type = "unlock-recipe",
            recipe = "dangerous-cryogenic-plant",
          },
          {
            type = "unlock-recipe",
            recipe = "chemical-plant",
          },

      },
      prerequisites = {"automation-science-pack","fluid-handling"},
      unit =
      {
        count = 1,
        ingredients =
        {
          {"automation-science-pack", 1},
        },
        time = 15
      }
    },
    {
      type = "technology",
      name = "froth-floatation-and-soaponification",
      icon = "__mineral-chemistry__/graphics/icons/froth-floatator.png",
      icon_size = 64, --default is 256
      essential = true,
      effects =
      {   
          --Froth floatation
          {
              type = "unlock-recipe",
              recipe = "covellite-froth",
          },
          {
            type = "unlock-recipe",
            recipe = "pyrite-froth",
          },
          {
            type = "unlock-recipe",
            recipe = "tenorite-froth",
          },
          {
            type = "unlock-recipe",
            recipe = "malachite-froth",
          },
          {
            type = "unlock-recipe",
            recipe = "siderite-froth",
          },
          {
            type = "unlock-recipe",
            recipe = "hematite-froth",
          },
          --Froth recovery
          {
            type = "unlock-recipe",
            recipe = "covellite-recovery",
          },
          {
            type = "unlock-recipe",
            recipe = "pyrite-recovery",
          },
          {
            type = "unlock-recipe",
            recipe = "tenorite-recovery",
          },
          {
            type = "unlock-recipe",
            recipe = "malachite-recovery",
          },
          {
            type = "unlock-recipe",
            recipe = "siderite-recovery",
          },
          {
            type = "unlock-recipe",
            recipe = "hematite-recovery",
          },
          --soaponification and gycerol recipes.
          {
            type = "unlock-recipe",
            recipe = "saponification-from-light-oil",
          },
          {
            type = "unlock-recipe",
            recipe = "glycerol-to-plastic",
          },
          {
            type = "unlock-recipe",
            recipe = "glycerol-to-fuel",
          },

      },
      prerequisites = {"expert-mineral-processing"},
      research_trigger = 
      {
        type = "build-entity",
        entity = "froth-floatation-plant",
      },
    },
    {
      type = "technology",
      name = "blasting-and-charcolation",
      icon = "__mineral-chemistry__/graphics/icons/blast-furnace.png",
      icon_size = 64, --default is 256
      essential = true,
      effects =
      {             
          
          { --Making fuel for this furnace
            type = "unlock-recipe",
            recipe = "blast-fuel",
          },
          --charcolation
          {
              type = "unlock-recipe",
              recipe = "glycerol-charcolation",
          },
          {
            type = "unlock-recipe",
            recipe = "fatty-acid-charcolation",
          },
          {
            type = "unlock-recipe",
            recipe = "solid-fuel-charcolation",
          },
          {
            type = "unlock-recipe",
            recipe = "wood-charcolation",
          },
          {
            type = "unlock-recipe",
            recipe = "petroleum-gas-charcolation",
          },
          {
            type = "unlock-recipe",
            recipe = "hematite-froth",
          },
          --recipes
          {
            type = "unlock-recipe",
            recipe = "copper-oxide-reduction",
          },
          {
            type = "unlock-recipe",
            recipe = "iron-oxide-reduction",
          },
          {
            type = "unlock-recipe",
            recipe = "copper-carbonate-to-oxide",
          },
          {
            type = "unlock-recipe",
            recipe = "iron-carbonate-to-oxide",
          },
          {
            type = "unlock-recipe",
            recipe = "copper-sulfide-to-oxide",
          },
          {
            type = "unlock-recipe",
            recipe = "iron-sulfide-to-oxide",
          },
          {
            type = "unlock-recipe",
            recipe = "copper-sulfide-to-oxide-chemistry",
          },
          {
            type = "unlock-recipe",
            recipe = "iron-sulfide-to-oxide-chemistry",
          },



      },
      prerequisites = {"expert-mineral-processing"},
      research_trigger = 
      {
        type = "build-entity",
        entity = "blast-furnace",
      },
    },
    {
      type = "technology",
      name = "advanced-pressure-oxidation",
      icon = "__base__/graphics/icons/chemical-plant.png",
      icon_size = 64, --default is 256
      essential = true,
      effects =
      {             
          
          { 
            type = "unlock-recipe",
            recipe = "copper-oxide-to-sulfate",
          },
          {
              type = "unlock-recipe",
              recipe = "iron-oxide-to-sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "copper-carbonate-to-sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "iron-carbonate-to-sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "copper-sulfide-to-sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "iron-sulfide-to-sulfate",
          },
          --Rough POX
          { 
            type = "unlock-recipe",
            recipe = "copper-oxide_rough_to_sulfate",
          },
          {
              type = "unlock-recipe",
              recipe = "iron-oxide_rough_to_sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "copper-carbonate_rough_to_sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "iron-carbonate_rough_to_sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "copper-sulfide_rough_to_sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "iron-sulfide_rough_to_sulfate",
          },
          --Import Corrundums chemistry recipes to round out sulfate management

          {
            type = "unlock-recipe",
            recipe = "dilute-acid-neutralization",
          },
          {
            type = "unlock-recipe",
            recipe = "destructive-dilute-acid-neutralization",
          },
          {
            type = "unlock-recipe",
            recipe = "hot-water-to-steam",
          },
          {
            type = "unlock-recipe",
            recipe = "sulfur-combustion",
          },
          {
            type = "unlock-recipe",
            recipe = "sulfur-reduction",
          },
          {
            type = "unlock-recipe",
            recipe = "hydrogen-sulfide-combustion",
          },
          {
            type = "unlock-recipe",
            recipe = "force-reduction-iron",
          },
            {
            type = "unlock-recipe",
            recipe = "force-reduction-copper",
          },
          {
            type = "unlock-recipe",
            recipe = "calcium-sulfate",
          },
          {
            type = "unlock-recipe",
            recipe = "sulfuric-acid-dilution",
          },
          {
            type = "unlock-recipe",
            recipe = "sulfuric-acid-concentration-alt",
          },
          {
            type = "unlock-recipe",
            recipe = "calcium-sulfate-production-alt",
          },
          

      },
      prerequisites = {"expert-mineral-processing"},
      research_trigger = 
      {
        type = "build-entity",
        entity = "chemical-plant",
      },
    },
    {
      type = "technology",
      name = "fluorination-and-pressure-washing",
      icon = "__mineral-chemistry__/graphics/technology/cryogenic-plant.png",
      icon_size = 256, --default is 256
      essential = true,
      effects =
      {             
          --Gangue
          { 
            type = "unlock-recipe",
            recipe = "slag-recycling",
          },
          {
              type = "unlock-recipe",
              recipe = "hydrofluoric-acid",
          },
          {
            type = "unlock-recipe",
            recipe = "calcium-sulfate-destruction",
          },
          {
            type = "unlock-recipe",
            recipe = "slag-destruction",
          },
          {
            type = "unlock-recipe",
            recipe = "fluorine-gas-from-acid",
          },
          {
            type = "unlock-recipe",
            recipe = "fluorine-gas-from-acid-danger",
          },
          { 
            type = "unlock-recipe",
            recipe = "fluoro-slag-destruction",
          },
          {
              type = "unlock-recipe",
              recipe = "dangerous-fluoro-slag-destruction",
          },
          {
            type = "unlock-recipe",
            recipe = "fluoro-detonation",
          },
          {
            type = "unlock-recipe",
            recipe = "dangerous-fluoroketone",
          },
          {
            type = "unlock-recipe",
            recipe = "covellite-pressure-washing",
          },
          {
            type = "unlock-recipe",
            recipe = "pyrite-pressure-washing",
          },
          {
            type = "unlock-recipe",
            recipe = "tenorite-pressure-washing",
          },
          {
            type = "unlock-recipe",
            recipe = "malachite-pressure-washing",
          },
          {
            type = "unlock-recipe",
            recipe = "siderite-pressure-washing",
          },
          {
            type = "unlock-recipe",
            recipe = "hematite-pressure-washing",
          },



      },
      prerequisites = {"expert-mineral-processing"},
      research_trigger = 
      {
        type = "build-entity",
        entity = "dangerous-cryogenic-plant",
      },
    },

})