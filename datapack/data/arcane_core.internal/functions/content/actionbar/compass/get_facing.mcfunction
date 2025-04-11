#> arcane_core.internal:content/actionbar/compass/get_facing
#
# @internal

execute if entity @s[y_rotation=-135..-45] run return run data modify storage arcane_core.internal:module root.actionbar.compass.facing set value "E→"
execute if entity @s[y_rotation=45..135] run return run data modify storage arcane_core.internal:module root.actionbar.compass.facing set value "W←"
execute unless entity @s[y_rotation=-135..135] run return run data modify storage arcane_core.internal:module root.actionbar.compass.facing set value "N↑"
data modify storage arcane_core.internal:module root.actionbar.compass.facing set value "S↓"
