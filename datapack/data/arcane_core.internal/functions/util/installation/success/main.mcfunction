#> arcane_core.internal:util/installation/success/main
#
# @internal

execute unless data storage arcane_core.internal:core root.installation.success[0] run return 0

data modify storage arcane_core.internal:core root.installation.temp set from storage arcane_core.internal:core root.installation.success

tellraw @s [ \
	 {"text": ""} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.success.start"} \
	,{"text": " Successfully installed the following projects:", "color": "#69ca73"} \
]

function arcane_core.internal:util/installation/success/iterate

tellraw @s [{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.success.end"}]
