-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

return {
	name = _t"Town",
	level_range = {1, 1},
	max_level = 1,
	decay = {300, 800},
	width = 20, height = 20,
	persistent = "zone",
	generator =  {
		map = {
			class = "engine.generator.map.Town",
			-- number of rooms
			nb_rooms = 3,
			rooms = {"simple", "pilar"},
			lite_room_chance = 100,
			['.'] = "FLOOR",
			['#'] = "WALL",
			up = "DOWN_TOWN",
			door = "DOOR",
		},
		actor = {
			class = "engine.generator.actor.Random",
			nb_npc = {2, 3},
		},
	},
	levels =
	{
	},
}
