-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

load("/data/general/npcs/kobold.lua")
local WinDialog = require "mod.dialogs.Win"

newEntity{
	name = "The Serpent of Chaos", color=colors.WHITE,
	type = "humanoid", subtype = "kobold",
	display = "J",
	desc = _t[[Ugly and green!]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=5, dex=5, con=5 },
	define_as ="KING",
	level_range = {6, 10}, exp_worth = 1,
	max_life = resolvers.rngavg(10,12),
	combat_armor = 3,
	combat = { dam=5 },
	on_die = function(self, who)
		game:registerDialog(WinDialog.new(self))
	end,
}
