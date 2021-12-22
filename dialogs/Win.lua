-- Copyright (C) 2009 - 2019 Nicolas Casalini
-- Licensed under the GNU General Public License 3 or later.
-- See COPYING.md for details.

require "engine.class"
local Dialog = require "engine.ui.Dialog"
local Textzone = require "engine.ui.Textzone"
local Separator = require "engine.ui.Separator"
local List = require "engine.ui.List"
local Savefile = require "engine.Savefile"
local Map = require "engine.Map"

module(..., package.seeall, class.inherit(Dialog))

function _M:init(actor)
	self.actor = actor
	Dialog.init(self, _t"*勝利*", 500, 300)

	self:generateList()

	self.c_desc = Textzone.new{width=self.iw, auto_height=true, text=[[おめでとう！世界に平和が訪れた！
]]}
	self.c_list = List.new{width=self.iw, nb_items=#self.list, list=self.list, fct=function(item) self:use(item) end}

	self:loadUI{
		{left=0, top=0, ui=self.c_desc},
		{left=5, top=self.c_desc.h, padding_h=10, ui=Separator.new{dir="vertical", size=self.iw - 10}},
		{left=0, bottom=0, ui=self.c_list},
	}
	self:setFocus(self.c_list)
	self:setupUI(false, true)
end

function _M:use(item)
	if not item then return end
	local act = item.action

	if act == "exit" then
		local save = Savefile.new(game.save_name)
		save:delete()
		save:close()
		core.game.exit_engine()
	end
end

function _M:generateList()
	local list = {}

	list[#list+1] = {name="Exit", action="exit"}

	self.list = list
end
