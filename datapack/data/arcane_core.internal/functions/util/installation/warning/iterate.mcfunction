#> arcane_core.internal:util/installation/warning/iterate
#
# @internal

tellraw @s [{"text": ""} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.warning.continue", "fallback": ""} \
	,{"storage": "arcane_core.internal:temp", "nbt": "root.iterate[-1].project_name"} \
	,{"text": " ["} \
	,{"storage": "arcane_core.internal:temp", "nbt": "root.iterate[-1].major.min", "color": "#ffd12f"} \
	,{"text": ".", "color": "#ffd12f"} \
	,{"storage": "arcane_core.internal:temp", "nbt": "root.iterate[-1].minor", "color": "#ffd12f"} \
	,{"text": ".", "color": "#ffd12f"} \
	,{"storage": "arcane_core.internal:temp", "nbt": "root.iterate[-1].patch", "color": "#ffd12f"} \
	,{"text": ", "} \
	,{"storage": "arcane_core.internal:temp", "nbt": "root.iterate[-1].major.max", "color": "#ffd12f"} \
	,{"text": ".0.0", "color": "#ffd12f"} \
	,{"text": ")"} \
]

data remove storage arcane_core.internal:temp root.iterate[-1]
execute if data storage arcane_core.internal:temp root.iterate[0] run function arcane_core.internal:util/installation/warning/iterate
