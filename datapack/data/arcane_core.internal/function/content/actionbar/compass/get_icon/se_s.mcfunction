#> arcane_core.internal:content/actionbar/compass/get_icon/se_s
#
# @internal

execute if entity @s[y_rotation=-67.5..-22.5] run return run \
	data modify storage arcane_core.internal:temp /.any set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.module.actionbar.compass.SE"}

data modify storage arcane_core.internal:temp /.any set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.module.actionbar.compass.S"}
