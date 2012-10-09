--[[

Critters for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-critters
License: GPLv3

Animals

]]--


-- register the critters
critters.register(minetest.get_current_modname(), {
	alligator={},
	ant={},
	bat={},
	bear={},
	bee={},
	bird={},
	bull={},
	bulldog={},
	butterfly={},
	cat={},
	chicken={},
	cow={},
	crab={},
	crocodile={},
	deer={},
	dog={},
	donkey={},
	duck={},
	eagle={},
	elephant={},
	fish={},
	fox={},
	frog={},
	giraffe={},
	gorilla={},
	hippo={},
	horse={},
	insect={},
	lion={},
	monkey={},
	moose={},
	mouse={},
	owl={},
	panda={},
	penguin={},
	pig={},
	rabbit={},
	rhino={},
	rooster={},
	shark={},
	sheep={},
	snake={},
	tiger={},
	turkey={},
	turtle={},
	wolf={},
})

-- log that we started
if minetest.setting_get("log_mods") then
	minetest.log("action", minetest.get_current_modname().." loaded")
end