-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

newEntity{
	define_as = "UP_TOWN",
	name = "exit to the town",
	display = '<', color_r=255, color_g=0, color_b=255, back_color=colors.DARK_GREY,
	always_remember = true,
	notice = true,
	change_level = 1,
	change_zone = "town",
}

newEntity{
	define_as = "DOWN_TOWN",
	name = "exit to the town",
	display = '>', color_r=255, color_g=0, color_b=255, back_color=colors.DARK_GREY,
	always_remember = true,
	notice = true,
	change_level = 1,
	change_zone = "dungeon",
}

newEntity{
	define_as = "UP",
	name = "previous level",
	display = '<', color_r=255, color_g=255, color_b=0, back_color=colors.DARK_GREY,
	notice = true,
	always_remember = true,
	change_level = -1,
}

newEntity{
	define_as = "DOWN",
	name = "next level",
	display = '>', color_r=255, color_g=255, color_b=0, back_color=colors.DARK_GREY,
	notice = true,
	always_remember = true,
	change_level = 1,
}

newEntity{
	define_as = "FLOOR",
	name = "floor", image = "terrain/marble_floor.png",
	display = ' ', color_r=255, color_g=255, color_b=255, back_color=colors.DARK_GREY,
}

newEntity{
	define_as = "WALL",
	name = "wall", image = "terrain/granite_wall1.png",
	display = '#', color_r=255, color_g=255, color_b=255, back_color=colors.GREY,
	always_remember = true,
	does_block_move = true,
	can_pass = {pass_wall=1},
	block_sight = true,
	air_level = -20,
	dig = "FLOOR",
}

newEntity{
	define_as = "DOOR",
	name = "door", image = "terrain/granite_door1.png",
	display = '+', color_r=238, color_g=154, color_b=77, back_color=colors.DARK_UMBER,
	notice = true,
	always_remember = true,
	block_sight = true,
	door_opened = "DOOR_OPEN",
	dig = "DOOR_OPEN",
}

newEntity{
	define_as = "DOOR_OPEN",
	name = "open door", image = "terrain/granite_door1_open.png",
	display = "'", color_r=238, color_g=154, color_b=77, back_color=colors.DARK_GREY,
	always_remember = true,
	door_closed = "DOOR",
}
