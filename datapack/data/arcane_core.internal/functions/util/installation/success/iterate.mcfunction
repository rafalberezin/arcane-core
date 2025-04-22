#> arcane_core.internal:util/installation/success/iterate
#
# @internal

tellraw @s [{"text": ""} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.success.continue", "fallback": ""} \
	,{"storage": "arcane_core.internal:temp", "nbt": "root.iterate[-1]"} \
]

data remove storage arcane_core.internal:temp root.iterate[-1]
execute if data storage arcane_core.internal:temp root.iterate[0] run function arcane_core.internal:util/installation/success/iterate
