#> command:arcane_core/use_actionbar_display/mana
#
# @user

execute unless score #arcane_core.internal:module.mana.enabled arcane_core.state matches 1 \
	run return run tellraw @s [{"text": ""} \
		,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon:chat.section.warning.start.new_line", "fallback": ""} \
		,{"text": " Cannot use this display because ", "color": "#c44949"} \
		,{"text": "Mana", "color": "#2bb5ff"} \
		,{"text": " module is disabled.\n", "color": "#c44949"} \
	]

function arcane_core.internal:content/actionbar/mana/enable
