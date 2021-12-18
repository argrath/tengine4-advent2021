-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

return {
	name = _t"Old ruins",
	level_range = {1, 1},
	max_level = 10,
	decay = {300, 800},
	width = 50, height = 50,
	persistent = "zone",
	generator =  {
		map = {
			class = "engine.generator.map.Roomer",
			nb_rooms = 10,
			rooms = {"simple", "pilar"},
			lite_room_chance = 100,
			['.'] = "FLOOR",
			['#'] = "WALL",
			up = "UP",
			down = "DOWN",
			door = "DOOR",
		},
		actor = {
			class = "engine.generator.actor.Random",
			nb_npc = {20, 30},
--			guardian = "SHADE_OF_ANGMAR", -- The guardian is set in the static map
		},
	},
	levels =
	{
	},
}
