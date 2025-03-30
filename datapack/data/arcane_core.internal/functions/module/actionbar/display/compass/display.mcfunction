#> arcane_core.internal:module/actionbar/display/compass/display
#
# @internal

execute unless entity @s[tag=arcane_core.internal.module.actionbar.display.compass] run return 0

execute store result score #arcane_core.internal:module.actionbar.compass.x arcane_core.state run data get entity @s Pos[0]
execute store result score #arcane_core.internal:module.actionbar.compass.y arcane_core.state run data get entity @s Pos[1]
execute store result score #arcane_core.internal:module.actionbar.compass.z arcane_core.state run data get entity @s Pos[2]

function arcane_core.internal:module/actionbar/display/compass/get_facing

title @s actionbar [ \
	 {"text": "[ "}\
	,{"score": {"name": "#arcane_core.internal:module.actionbar.compass.x", "objective": "arcane_core.state"}, "color": "#ffd12f"}\
	,{"text": " "}\
	,{"score": {"name": "#arcane_core.internal:module.actionbar.compass.y", "objective": "arcane_core.state"}, "color": "#ffd12f"}\
	,{"text": " "}\
	,{"score": {"name": "#arcane_core.internal:module.actionbar.compass.z", "objective": "arcane_core.state"}, "color": "#ffd12f"}\
	,{"text": " | "}\
	,{"storage": "arcane_core.internal:module", "nbt": "root.actionbar.compass.facing", "color": "#e85a5a"}\
	,{"text": " ]"}\
]
