--[[

Critters for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-critters
License: GPLv3

API

]]--

dofile(minetest.get_modpath("critters").."/api.lua")

critters = {}

local get_critter_def = function(name,modname,def)
	local default = {
		mob = {
			name = name,
			modname = modname,
			type = "animal",
			hp_max = 5,
			collisionbox = {-0.6, -0.625, -0.6, 0.6, 0.625, 0.6},
			visual = "upright_sprite",
			visual_size = {x=1, y=1},
			textures = {modname.."_"..name..".png", modname.."_"..name..".png"},
			makes_footstep_sound = true,
			walk_velocity = 1,
			armor = 3,
			drawtype = "side",
			water_damage = 1,
			lava_damage = 5,
			light_damage = 0,
		},
		spawn = {
			max_height = 31000,
			mobs_per_30_block_radius = 0,
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

if minetest.setting_get("log_mods") then
	minetest.log("action", minetest.get_current_modname().." loaded")
end
