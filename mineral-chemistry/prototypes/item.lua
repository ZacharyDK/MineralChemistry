local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
--local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
--local simulations_mineral-chemistry = require("__mineral-chemistry__.prototypes.factoriopedia-simulations")

local explosionEffect = table.deepcopy(data.raw.explosion["big-explosion"])

explosionEffect.name = "fluorine-explosion"
explosionEffect.localised_name = { "entity-name.fluorine-explosion" }
explosionEffect.icons = {
  { icon = "__base__/graphics/icons/explosion.png" },
}

data:extend { explosionEffect }


function create_procedural_raw_ore_entry(prefix_name, input_tint, in_order)
return {
  type = "item",
  name = prefix_name .. "_ore_raw",
  icons = 
  {
    {
      icon = "__mineral-chemistry__/graphics/icons/procedural-ore.png",
      tint = input_tint,
    }
  },
  pictures =
  {
    { size = 64, filename = "__mineral-chemistry__/graphics/icons/procedural-ore.png",   scale = 0.5, mipmap_count = 4, tint = input_tint},
    { size = 64, filename = "__mineral-chemistry__/graphics/icons/procedural-ore-1.png", scale = 0.5, mipmap_count = 4, tint = input_tint},
    { size = 64, filename = "__mineral-chemistry__/graphics/icons/procedural-ore-2.png", scale = 0.5, mipmap_count = 4, tint = input_tint},
    { size = 64, filename = "__mineral-chemistry__/graphics/icons/procedural-ore-3.png", scale = 0.5, mipmap_count = 4, tint = input_tint }
  },
  order = in_order,
  subgroup = "procedural-ore", --I'd prefer if these were below aquilo...
  color_hint = { text = "T" },

  inventory_move_sound = item_sounds.resource_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.resource_inventory_move,
  stack_size = 50,
  default_import_location = "nauvis", --TODO
  weight = 10*kg
}
end

function create_single_sprite_tinted_entry(input_name, subpath,input_tint, in_order)
  fullpath = "__mineral-chemistry__/graphics/icons/" .. subpath
  return {
    type = "item",
    name = input_name,
    icons = 
    {
      {
        icon = fullpath,
        tint = input_tint,
      }
    },
    pictures =
    {
      { size = 64, filename = fullpath,   scale = 0.5, mipmap_count = 4, tint = input_tint},
    },
    order = in_order,
    subgroup = "procedural-refined", --I'd prefer if these were below aquilo...
    color_hint = { text = "T" },

    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = "nauvis", --TODO
    weight = 10*kg
  }
end

function create_picture_table(path_root,base_name,num_pictures)
  local out_table = {}
  local i = 0
  while i < num_pictures do
    local string_number = tostring(i+1)
    local path = path_root .. base_name .. "-" .. string_number .. ".png"
    local row  = {size = 64, filename = path,   scale = 0.5, mipmap_count = 4}
    table.insert(out_table,row)
    i = i + 1
  end
  return out_table
end

function create_item_picture_table_assit(input_name, subfolder, name_postfix, num_pictures, in_order)

  picture_table_root = "__mineral-chemistry__/graphics/icons/" .. subfolder .. "/" .. input_name .. "/"
  icon_path = picture_table_root .. input_name .. "-1.png"
  picture_table = create_picture_table(picture_table_root,input_name,num_pictures)
  return {
    type = "item",
    name = input_name .. name_postfix,
    icons = 
    {
      {
        icon = icon_path,
      }
    },
    pictures = picture_table,

    order = in_order,
    subgroup = "expert-refining", --I'd prefer if these were below aquilo...
    color_hint = { text = "T" },

    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = "nauvis", --TODO
    weight = 2*kg
  }
end

function create_picture_table_tinted(path_root,base_name,num_pictures,in_tint)
  local out_table = {}
  local i = 0
  while i < num_pictures do
    local string_number = tostring(i+1)
    local path = path_root .. base_name .. "-" .. string_number .. ".png"
    local row  = {size = 64, filename = path,   scale = 0.5, mipmap_count = 4,tint = in_tint}
    table.insert(out_table,row)
    i = i + 1
  end
  return out_table
end

function create_item_picture_table_assit_tinted(input_name, subfolder, name_postfix, num_pictures, in_order, in_tint)

  picture_table_root = "__mineral-chemistry__/graphics/icons/" .. subfolder .. "/" .. input_name .. "/"
  icon_path = picture_table_root .. input_name .. "-1.png"
  picture_table = create_picture_table_tinted(picture_table_root,input_name,num_pictures,in_tint)
  return {
    type = "item",
    name = input_name .. name_postfix,
    icons = 
    {
      {
        icon = icon_path,
        tint = in_tint,
      }
    },
    pictures = picture_table,

    order = in_order,
    subgroup = "procedural-product",
    color_hint = { text = "T" },

    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = "nauvis", --TODO
    weight = 2*kg
  }
end

data:extend(
{
    create_item_picture_table_assit("slag","ores_malcom","",1,"z"),

    create_item_picture_table_assit("covellite","ores_malcom","",3,"b"),
    create_item_picture_table_assit("hematite","ores_malcom","", 3,"c"),
    create_item_picture_table_assit("malachite","ores_malcom","", 4,"f"),
    create_item_picture_table_assit("pyrite","ores_malcom","", 3, "a"),
    create_item_picture_table_assit("siderite","ores_malcom","",3,"e"),
    create_item_picture_table_assit("tenorite","ores_malcom","",4,"d"),
    
    create_item_picture_table_assit("fluorite","ores_malcom","",3,"z"),

    create_item_picture_table_assit("covellite","ores_malcom/low-quality","_rough",3,"h"),
    create_item_picture_table_assit("hematite","ores_malcom/low-quality","_rough", 3,"i"),
    create_item_picture_table_assit("malachite","ores_malcom/low-quality","_rough", 4,"l"),
    create_item_picture_table_assit("pyrite","ores_malcom/low-quality","_rough", 3,"g"),
    create_item_picture_table_assit("siderite","ores_malcom/low-quality","_rough",3,"k"),
    create_item_picture_table_assit("tenorite","ores_malcom/low-quality","_rough",4,"j"),

    {
      type = "item",
      name = "blast-furnace",
      icon = "__mineral-chemistry__/graphics/icons/blast-furnace.png",
      subgroup = "smelting-machine",
      order = "z[steel-furnace]",
      inventory_move_sound = item_sounds.metal_large_inventory_move,
      pick_sound = item_sounds.metal_large_inventory_pickup,
      drop_sound = item_sounds.metal_large_inventory_move,
      place_result = "blast-furnace",
      stack_size = 50,
      default_import_location = "nauvis",
    },
    {
      type = "item",
      name = "dangerous-cryogenic-plant",
      icon = "__mineral-chemistry__/graphics/icons/cryogenic-plant.png",
      subgroup = "production-machine",
      order = "z[cryogenic-plant]",
      inventory_move_sound = item_sounds.mechanical_large_inventory_move,
      pick_sound = item_sounds.mechanical_large_inventory_pickup,
      drop_sound = item_sounds.mechanical_large_inventory_move,
      place_result = "dangerous-cryogenic-plant",
      stack_size = 20,
      default_import_location = "aquilo", --TODO
      weight = 200 * kg
    },
    {
      type = "item",
      name = "froth-floatation-plant",
      icon = "__mineral-chemistry__/graphics/icons/froth-floatator.png",
      subgroup = "production-machine",
      order = "w[chemical-plant]",
      inventory_move_sound = item_sounds.fluid_inventory_move,
      pick_sound = item_sounds.fluid_inventory_pickup,
      drop_sound = item_sounds.fluid_inventory_move,
      place_result = "froth-floatation-plant",
      stack_size = 5,
      weight = 50 * kg,
      default_import_location = "nauvis",
    },
    {
      type = "item",
      name = "blast-fuel",
      icon = "__mineral-chemistry__/graphics/icons/blast-fuel.png",
      fuel_category = "chemical",
      fuel_value = "12.2MJ",
      fuel_acceleration_multiplier = 0.9,
      fuel_top_speed_multiplier = 1.00,
      subgroup = "raw-material",
      order = "b[chemistry]-b[blast-fuel]",
      inventory_move_sound = item_sounds.solid_fuel_inventory_move,
      pick_sound = item_sounds.solid_fuel_inventory_pickup,
      drop_sound = item_sounds.solid_fuel_inventory_move,
      stack_size = 50,
      weight = 1 * kg,
      random_tint_color = item_tints.yellowing_coal
    },
    {
      type = "item",
      name = "fluorine-explosion",
      icon = "__base__/graphics/icons/explosion.png",
      subgroup = "procedural-science-pack", --I want this to be at the bottom
      order = "zzzzzz",
      inventory_move_sound = item_sounds.solid_fuel_inventory_move,
      pick_sound = item_sounds.solid_fuel_inventory_pickup,
      drop_sound = item_sounds.solid_fuel_inventory_move,
      stack_size = 50,
      weight = 1 * kg,
      random_tint_color = item_tints.yellowing_coal,
      spoil_ticks = 1,
      spoil_to_trigger_result = 
      {
        items_per_trigger = 1,
        trigger = 
        {
          type = "direct",
          action_delivery = 
          {
            type = "instant",
            target_effects = 
            {
              {
                type = "create-explosion",
                entity_name = "fluorine-explosion",
              },
              {
                type = "nested-result",
                action = 
                {
                  type = "area",
                  radius = 10,
                  target_entities = true,
                  action_delivery = 
                  {
                    type = "instant",
                    target_effects = 
                    {
                      {
                        type = "damage",
                        damage = 
                        {
                          amount = 1000,
                          type = "explosion",
                        },
                        apply_damage_to_trees = true,
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

    },
    --[[
    {
      type = "item",
      name = "thruster-barrel",
      icon = "__mineral-chemistry__/graphics/icons/thruster-barrel-fill.png",
      subgroup = "space-related",
      order = "e[thruster]",
      inventory_move_sound = item_sounds.fluid_inventory_move,
      pick_sound = item_sounds.fluid_inventory_pickup,
      drop_sound = item_sounds.fluid_inventory_move,
      stack_size = 10,
      weight = 8 * kg,
      random_tint_color = item_tints.yellowing_coal
    },
    {
      type = "item",
      name = "oxidizer-barrel",
      icon = "__mineral-chemistry__/graphics/icons/oxidizer-barrel-fill.png",
      subgroup = "space-related",
      order = "f[oxidizer]",
      inventory_move_sound = item_sounds.fluid_inventory_move,
      pick_sound = item_sounds.fluid_inventory_pickup,
      drop_sound = item_sounds.fluid_inventory_move,
      stack_size = 10,
      weight = 8 * kg,
      random_tint_color = item_tints.yellowing_coal
    },
    --]]
    {
      type = "item",
      name = "terra-asteroid-chunk",
      icon = "__mineral-chemistry__/graphics/icons/terra-asteroid-chunk.png",
      subgroup = "space-material",
      order = "t[terra]-e[chunk]",
      inventory_move_sound = space_age_item_sounds.rock_inventory_move,
      pick_sound = space_age_item_sounds.rock_inventory_pickup,
      drop_sound = space_age_item_sounds.rock_inventory_move,
      stack_size = 1,
      weight = 100 * kg,
      random_tint_color = item_tints.iron_rust,
    },
    {
      type = "item",
      name = "calcium-sulfate",
      icon = "__mineral-chemistry__/graphics/icons/calcium-sulfate.png",

      subgroup = "raw-material",
      color_hint = { text = "T" },
      order = "z[calciumsulfate]",
      inventory_move_sound = item_sounds.resource_inventory_move,
      pick_sound = item_sounds.resource_inventory_pickup,
      drop_sound = item_sounds.resource_inventory_move,
      stack_size = 50,
      default_import_location = "nauvis",
      weight = 1*kg
    },
}

)