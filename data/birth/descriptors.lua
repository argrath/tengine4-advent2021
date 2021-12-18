-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

newBirthDescriptor{
	type = "base",
	name = "base",
	desc = {
	},
	experience = 1.0,

	copy = {
		max_level = 10,
		lite = 4,
		max_life = 25,
	},
}

newBirthDescriptor{
	type = "role",
	name = "Destroyer",
	desc =
	{
		"Crashhhhh!",
	},
	talents = {
		[ActorTalents.T_KICK]=1,
	},
}

newBirthDescriptor{
	type = "role",
	name = "Acid-maniac",
	desc =
	{
		"Zshhhhhhhh!",
	},
	talents = {
		[ActorTalents.T_ACID_SPRAY]=1,
	},
}
