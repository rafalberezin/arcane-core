#> arcane_core.internal:content/actionbar/compass/get_icon/ne_e
#
# @internal

execute if entity @s[y_rotation=..-112.5] run return run \
	data modify storage arcane_core.internal:temp /.any set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.module.actionbar.compass.NE"}

data modify storage arcane_core.internal:temp /.any set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.module.actionbar.compass.E"}
