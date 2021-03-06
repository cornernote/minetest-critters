--[[

Critters for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-critters
License: BSD-3-Clause https://raw.github.com/cornernote/minetest-critters/master/LICENSE

Characters

]]--


-- register the critters
critters.register(minetest.get_current_modname(), {
	alien={},
	angel={},
	baby={},
	boxer={},
	chef={},
	clown={},
	dad={},
	devil={},
	doctor={},
	dragon={},
	firefighter={},
	ghost={},
	girl={},
	kid={},
	king={},
	knight={},
	lawyer={},
	leprechaun={},
	man={},
	mermaid={},
	monster={},
	ninja={},
	nurse={},
	pirate={},
	policeman={},
	prince={},
	princess={},
	queen={},
	robot={},
	santa={},
	snowman={},
	superhero={},
	teacher={},
	troll={},
	vampire={},
	werewolf={},
	witch={},
	zombie={},
})


-- log that we started
if minetest.setting_get("log_mods") then
	minetest.log("action", minetest.get_current_modname().." loaded")
end
