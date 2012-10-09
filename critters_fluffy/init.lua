--[[

Critters for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-critters
License: GPLv3

Fluffy

]]--

critters.register(minetest.get_current_modname(), {
	blue={},
	green={},
	orange={},
	purple={},
})

if minetest.setting_get("log_mods") then
	minetest.log("action", minetest.get_current_modname().." loaded")
end