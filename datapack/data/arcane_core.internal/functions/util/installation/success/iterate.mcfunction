#> arcane_core.internal:util/installation/success/iterate
#
# @internal

tellraw @s [{"text": ""} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.success.continue", "fallback": ""} \
	,{"storage": "arcane_core.internal:core", "nbt": "root.installation.temp[-1]"} \
]

data remove storage arcane_core.internal:core root.installation.temp[-1]
execute if data storage arcane_core.internal:core root.installation.temp[-1] run function arcane_core.internal:util/installation/success/iterate
