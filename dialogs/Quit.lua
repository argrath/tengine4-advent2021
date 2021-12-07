-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

require "engine.class"
require "engine.Dialog"
local Savefile = require "engine.Savefile"

module(..., package.seeall, class.inherit(engine.Dialog))

function _M:init()
	engine.Dialog.init(self, _t"Really exit Example Module?", 300, 100)
	self:keyCommands({
		__DEFAULT = function()
			game:unregisterDialog(self)
			game.quit_dialog = false
		end,
	}, {
		ACCEPT = function()
			-- savefile_pipe is created as a global by the engine
			savefile_pipe:push(game.save_name, "game", game)
			core.game.exit_engine()
		end,
	})
end

function _M:drawDialog(s, w, h)
	s:drawColorStringCentered(self.font, "Press enter to quit, any other keys to stay", 2, 2, self.iw - 2, self.ih - 2)
end
