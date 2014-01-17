--[[

Critters for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-critters
License: BSD-3-Clause https://raw.github.com/cornernote/minetest-critters/master/LICENSE

Fluffy

]]--


-- register the critters
critters.register(minetest.get_current_modname(), {
	blue={mob={type="monster"}},
	green={mob={type="monster"}},
	orange={mob={type="monster"}},
	purple={mob={type="monster"}},
})


-- log that we started
if minetest.setting_get("log_mods") then
	minetest.log("action", minetest.get_current_modname().." loaded")
end
