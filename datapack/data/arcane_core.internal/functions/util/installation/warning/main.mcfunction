#> arcane_core.internal:util/installation/warning/main
#
# @internal

execute unless data storage arcane_core.internal:core root.installation.warning[0] run return 0

data modify storage arcane_core.internal:core root.installation.temp set from storage arcane_core.internal:core root.installation.warning

tellraw @s [ \
	 {"text": ""} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.warning.start", "fallback": ""} \
	,{"text": " These projects require different version\n", "color": "#c44949"} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.warning.continue", "fallback": ""} \
	,{"text": " of ", "color": "#c44949"} \
	,{"text": "Arcane Core", "color": "#edb97e"} \
	,{"text": " and might not work properly:", "color": "#c44949"} \
]

function arcane_core.internal:util/installation/warning/iterate

tellraw @s [{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.warning.end", "fallback": ""}]
