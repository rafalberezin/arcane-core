#> arcane_core.internal:content/actionbar/compass/get_icon/nw_n
#
# @internal

execute if entity @s[y_rotation=112.5..157.5] run return run \
	data modify storage arcane_core.internal:temp /.any set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.module.actionbar.compass.NW"}

data modify storage arcane_core.internal:temp /.any set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.module.actionbar.compass.N"}
