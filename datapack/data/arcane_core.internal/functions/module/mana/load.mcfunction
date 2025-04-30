#> arcane_core.internal:module/mana/load
#
# @internal
#
# @handles #arcane_core.internal:module/load

execute unless score #arcane_core.internal:module.mana.enabled arcane_core.state matches 1 run return 0

scoreboard objectives add arcane_core.api.module.mana.current dummy
scoreboard objectives add arcane_core.api.module.mana.max dummy
scoreboard objectives add arcane_core.api.module.mana.regen dummy
scoreboard objectives add arcane_core.internal.module.mana.regen_accumulator dummy

scoreboard objectives modify arcane_core.api.module.mana.current displayname [""\
	,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "color": "white", "fallback": ""}\
	,{"text": " Mana ", "color": "#2bb5ff"}\
	,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "color": "white", "fallback": ""}\
 	]

scoreboard objectives modify arcane_core.api.module.mana.max displayname [""\
	,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "color": "white", "fallback": ""}\
	,{"text": " Max Mana ", "color": "#2bb5ff"}\
	,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "color": "white", "fallback": ""}\
 	]

scoreboard objectives modify arcane_core.api.module.mana.regen displayname [""\
	,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "color": "white", "fallback": ""}\
	,{"text": " Mana Regen ", "color": "#2bb5ff"}\
	,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "color": "white", "fallback": ""}\
 	]

scoreboard objectives modify arcane_core.api.module.mana.current numberformat styled {"color": "#2bb5ff"}
scoreboard objectives modify arcane_core.api.module.mana.max numberformat styled {"color": "#2bb5ff"}
scoreboard objectives modify arcane_core.api.module.mana.regen numberformat styled {"color": "#2bb5ff"}

function arcane_core.internal:config/module/mana/global

execute unless score #arcane_core.internal:config.global.module.mana.mana_crystal.animation arcane_core.config matches 0 run scoreboard objectives add arcane_core.internal.cooldown.mana.mana_crystal dummy
