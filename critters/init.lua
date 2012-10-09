--[[

Critters for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-critters
License: GPLv3

API

]]--


-- include mobs api
dofile(minetest.get_modpath("critters").."/api.lua")


-- expose the api
critters = {}


-- get_critter_def
-- @param name - name of the critter
-- @param modname - name of the mod
-- @param def - definition table
-- @return - definition table merged with defaults
local get_critter_def = function(name,modname,def)
	local default = {
		mob = {

			-- visual settings
			visual = "upright_sprite",
			visual_size = {x=1, y=1},
			drawtype = "front",
			textures = {modname.."_"..name..".png", modname.."_"..name..".png"},
			collisionbox = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
			makes_footstep_sound = true,

			-- mechanic settings
			type = "animal",
			hp_max = 1,
			armor = 1,
			walk_velocity = 1,
			run_velocity = 2,
			view_range = 5,
			damage = 1,
			water_damage = 1,
			lava_damage = 5,
			light_damage = 0,
			light_resistant = true,
			drops = {
				{name = "default:apple", chance = 10, min = 1, max = 1},
			}
			
		},
		spawn = {
		
			-- spawn settings
			max_height = 31000,
			mobs_per_30_block_radius = 10,
			chance = 9000,
			max_light = 20,
			min_light = 8,
			nodes = {"default:dirt_with_grass"},
			
		}
	}
	for k,v in pairs(def) do
		for kk,vv in pairs(v) do
			default[k][k] = vv
		end
	end
	return default
end


-- register
-- @param modname - name of the mod
-- @param critters - table, key is name of critter, value is definition table
critters.register = function(modname,critters)
	local critter
	for name,def in pairs(critters) do
		critter = get_critter_def(name,modname,def)
		mobs:register_mob(modname..":"..name, critter.mob)
		mobs:register_spawn(modname..":"..name, 
			critter.spawn.nodes, 
			critter.spawn.max_light, 
			critter.spawn.min_light, 
			critter.spawn.chance, 
			critter.spawn.mobs_per_30_block_radius, 
			critter.spawn.max_height)
	end
end


-- log that we started
if minetest.setting_get("log_mods") then
	minetest.log("action", minetest.get_current_modname().." loaded")
end
