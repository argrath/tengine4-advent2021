-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

return {
	name = _t"Angband",
	level_range = {1, 1},
	max_level = 2,
	decay = {300, 800},
	width = 50, height = 50,
	persistent = "zone",
	generator =  {
		map = {
			class = "engine.generator.map.Octopus",
			-- number of rooms
--			nb_rooms = 3,
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
			nb_npc = {2, 3},
			guardian = "KING", -- The guardian is set in the static map
		},
	},
	levels =
	{
		[1] = {
			generator = { map = {
				up = "UP_TOWN",
			}, },
		},
	},
}
