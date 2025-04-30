#> arcane_core.internal:content/actionbar/mana/display
#
# @internal
#
# @handles #arcane_core.internal:module/actionbar/display

execute unless entity @s[tag=arcane_core.internal.module.actionbar.display.mana] run return 0


title @s actionbar [ \
	 {"text": ""} \
	,{"font": "arcane_core.icon:decorative", "text": "["} \
	,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "fallback": ""} \
	,{"text": " "} \
	,{"score": {"name": "@s", "objective": "arcane_core.api.module.mana.current"}, "color": "#2bb5ff"} \
	,{"text": "/"} \
	,{"score": {"name": "@s", "objective": "arcane_core.api.module.mana.max"}, "color": "#2bb5ff"} \
	,{"font": "arcane_core.icon:decorative", "text": "|"} \
	,{"text": "+"} \
	,{"score": {"name": "@s", "objective": "arcane_core.api.module.mana.regen"}, "color": "#2bb5ff"} \
	,{"text": "/s"} \
	,{"font": "arcane_core.icon:decorative", "text": "]"} \
]
