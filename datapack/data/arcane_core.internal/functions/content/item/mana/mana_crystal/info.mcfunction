#> arcane_core.internal:content/item/mana/mana_crystal/info
#
# @internal

execute if score @s arcane_core.api.module.mana.max >= #arcane_core.internal:config.global.module.mana.max_mana.max arcane_core.config run \
	return run title @s actionbar [ \
		 {"text": ""} \
		,{"font": "arcane_core.icon:decorative", "text": "["} \
		,{"text": "Cannot increase "} \
		,{"text": "Max", "color": "#2bb5ff"} \
		,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "fallback": ""} \
		,{"font": "arcane_core.icon:decorative", "text": "]"} \
	]

execute unless entity @s[tag=arcane_core.internal.cooldown.mana.mana_crystal] run \
	return run title @s actionbar [ \
		 {"text": ""} \
		,{"font": "arcane_core.icon:decorative", "text": "["} \
		,{"text": "Max", "color": "#2bb5ff"} \
		,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "fallback": ""} \
		,{"text": ": "} \
		,{"score": {"name": "@s", "objective": "arcane_core.api.module.mana.max"}, "color": "#2bb5ff"} \
		,{"text": "/"} \
		,{"score": {"name": "#arcane_core.internal:config.global.module.mana.max_mana.max", "objective": "arcane_core.config"}, "color": "#2bb5ff"} \
		,{"font": "arcane_core.icon:decorative", "text": "|"} \
		,{"text": "Shatter ", "color": "#a661d4"} \
		,{"text": "Crystal", "color": "#2bb5ff"} \
		,{"text": ": +"} \
		,{"score": {"name": "#arcane_core.internal:config.global.module.mana.max_mana.gain", "objective": "arcane_core.config"}, "color": "#2bb5ff"} \
		,{"font": "arcane_core.icon:decorative", "text": "]"} \
	]

scoreboard players operation #arcane_core.api:math.ticks_to_seconds.in arcane_core.math = @s arcane_core.internal.cooldown.mana.mana_crystal
function arcane_core.api:math/ticks_to_seconds
title @s actionbar [ \
	 {"text": ""} \
	,{"font": "arcane_core.icon:decorative", "text": "["} \
	,{"score": {"name": "#arcane_core.api:math.ticks_to_seconds.out", "objective": "arcane_core.math"}, "color": "#c44949"} \
	,{"text": "s", "color": "#c44949"} \
	,{"font": "arcane_core.icon:decorative", "text": "]"} \
]
