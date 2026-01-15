#> arcane_core.internal:content/actionbar/compass/display
#
# @internal
#
# @handles #arcane_core.internal:module/actionbar/display

execute unless entity @s[tag=arcane_core.internal.module.actionbar.display.compass] run return 0

data modify storage arcane_core.internal:temp /.pos set from entity @s Pos

execute store result score #arcane_core.internal:temp.x arcane_core.api.state run data get storage arcane_core.internal:temp /.pos[0]
execute store result score #arcane_core.internal:temp.y arcane_core.api.state run data get storage arcane_core.internal:temp /.pos[1]
execute store result score #arcane_core.internal:temp.z arcane_core.api.state run data get storage arcane_core.internal:temp /.pos[2]

function arcane_core.internal:content/actionbar/compass/get_icon/main

title @s actionbar [{"text": ""}, \
	{"font": "arcane_core.api:icon/decorative", "text": "["}, \
	{"score": { "name": "#arcane_core.internal:temp.x", "objective": "arcane_core.api.state" }}, \
	{"text": " "}, \
	{"score": { "name": "#arcane_core.internal:temp.y", "objective": "arcane_core.api.state" }}, \
	{"text": " "}, \
	{"score": { "name": "#arcane_core.internal:temp.z", "objective": "arcane_core.api.state" }}, \
	{"font": "arcane_core.api:icon/decorative", "text": "|"}, \
	{"storage": "arcane_core.internal:temp", "nbt": "/.any", "interpret": true}, \
	{"font": "arcane_core.api:icon/decorative", "text": "]"} \
]
