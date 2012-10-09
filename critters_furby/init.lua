--[[

Critters for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-critters
License: GPLv3

Furby

]]--


-- register the critters
critters.register(minetest.get_current_modname(), {
	black={},
	black_spots={},
	bored={},
	chan_chi_chan={},
	elephant={},
	fahhh={},
	frog={},
	giraffe={},
	gorilla={},
	gray={},
	gray_pink={},
	gray_white={},
	happy={},
	opps={},
	party={},
	patriotic={},
	snow_white={},
	spring={},
	tan={},
	tiger={},
	tuxed={},
	wolf={},
	zebra={},
	zzz={},
	zzzz={},
})


-- log that we started
if minetest.setting_get("log_mods") then
	minetest.log("action", minetest.get_current_modname().." loaded")
end
