locale "ja_JP"
------------------------------------------------
section "mod-example/class/Actor.lua"

t("You do not have enough power to activate %s.", "　%sを起動するだけのリソースがない。", "logPlayer")
t("You do not have enough power to cast %s.", "　%sを使用するリソースがない。", "logPlayer")
t("%s activates %s.", "%sは%sを起動した。", "logSeen")
t("%s deactivates %s.", "%sは%sを解除した。", "logSeen")
t("%s uses %s.", "%sは%sを使った。", "logSeen")
-- untranslated text
--[==[
t("%s", "%s", "logSeen")
--]==]


------------------------------------------------
section "mod-example/class/Game.lua"

t("There is no way out of this level here.", "この階層には出口がない。", "log")
t("Saving game...", "セーブ中・・・", "log")
-- untranslated text
--[==[
t("NB: %d", "NB: %d", "log")
--]==]


------------------------------------------------
section "mod-example/class/Player.lua"

t("taken damage", "ダメージを受けた", "_t")
t("LOW HEALTH!", "瀕死！", "_t")
t("#00ff00#Talent %s is ready to use.", "#00ff00#%sが使えるようになった。", "log")
t("LEVEL UP!", "レベルアップ！", "_t")
t("#00ffff#Welcome to level %d.", "#00ffff#レベル%dにようこそ。", "log")

------------------------------------------------
section "mod-example/data/birth/descriptors.lua"

t("base", "ベース", "birth descriptor name")
t("Destroyer", "破壊者", "birth descriptor name")
t("Acid-maniac", "アシッドマニア", "birth descriptor name")

------------------------------------------------
section "mod-example/data/damage_types.lua"

t("%s hits %s for %s%0.2f %s damage#LAST#.", "%sは%sに%s%0.2fの%sダメージを与えた。#LAST#.", "logSeen")
t("Kill!", "キル！", "_t")

------------------------------------------------
section "mod-example/data/general/grids/basic.lua"

t("exit to the wilds", "荒野へ", "entity name")
t("previous level", "前の階層へ", "entity name")
t("next level", "次の階層へ", "entity name")
t("floor", "床", "entity name")
t("wall", "壁", "entity name")
t("door", "扉", "entity name")
t("open door", "開いた扉", "entity name")

------------------------------------------------
section "mod-example/data/general/npcs/kobold.lua"

t("humanoid", "人型", "entity type")
t("kobold", "コボルド", "entity subtype")
t("Ugly and green!", "　緑色のキモイ奴！", "_t")
t("kobold warrior", "コボルド戦士", "entity name")
t("armoured kobold warrior", "武装コボルド戦士", "entity name")

------------------------------------------------
section "mod-example/data/talents.lua"

t("role", "役柄", "talent category")
t("Kick", "キック", "talent name")
t("Acid Spray", "アシッドスプレー", "talent name")

------------------------------------------------
section "mod-example/data/zones/dungeon/zone.lua"

t("Old ruins", "古代の廃墟", "_t")

------------------------------------------------
section "mod-example/dialogs/DeathDialog.lua"

t("Death!", "死亡！", "_t")
t("#LIGHT_BLUE#You resurrect! CHEATER !", "#LIGHT_BLUE#チート乙です！", "logPlayer")

------------------------------------------------
section "mod-example/dialogs/Quit.lua"

t("Really exit Example Module?", "使用例モジュールから抜けますか？", "_t")

------------------------------------------------
section "mod-example/init.lua"

t("Example Module for T-Engine4", "使用例モジュール", "init.lua long_name")
t([[This is *NOT* a game, just an example/template to make your own using the T-Engine4.
]], [[　これはゲームでは「ありません」T-Engine4を使ったゲーム作成の一例です。
]], "init.lua description")

------------------------------------------------
section "mod-example/load.lua"

t("Strength", "腕力", "stat name")
t("str", "腕力", "stat short_name")
t("Dexterity", "機敏", "stat name")
t("dex", "機敏", "stat short_name")
t("Constitution", "耐久", "stat name")
t("con", "耐久", "stat short_name")

