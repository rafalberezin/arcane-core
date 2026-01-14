#> arcane_core.internal:content/actionbar/compass/get_icon/sw_w
#
# @internal

execute if entity @s[y_rotation=..67.5] run return run \
	data modify storage arcane_core.internal:temp /.any set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.module.actionbar.compass.SW"}

data modify storage arcane_core.internal:temp /.any set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.module.actionbar.compass.W"}
