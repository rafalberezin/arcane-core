#> arcane_core.internal:util/installation/success/main
#
# @internal

data modify storage arcane_core.internal:temp root.iterate set from storage arcane_core.internal:core root.installation.success

tellraw @s [{"text": ""} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.success.start", "fallback": ""} \
	,{"text": "Successfully installed the following projects:", "color": "#69ca73"} \
]

function arcane_core.internal:util/installation/success/iterate

tellraw @s [{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.success.end", "fallback": ""}]
