-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

newEntity{
	name = "Singing, happy drunk", color=colors.YELLOW,
	type = "humanoid", subtype = "kobold",
	display = "t",
	desc = _t[[Ugly and green!]],

	ai = "move_wander", ai_state = { talent_in=3, },
	faction = "players",
	rarity = 4,
	stats = { str=5, dex=5, con=5 },
	define_as ="DRUNK",
	level_range = {6, 10}, exp_worth = 1,
	max_life = resolvers.rngavg(10,12),
	combat_armor = 3,
	combat = { dam=5 },
	on_die = function(self, who)
		game:registerDialog(WinDialog.new(self))
	end,
}