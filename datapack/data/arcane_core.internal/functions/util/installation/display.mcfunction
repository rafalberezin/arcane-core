#> arcane_core.internal:util/installation/display
#
# @internal
#
# @handles #arcane_core.internal:core/player/load

tellraw @s [{"text": ""} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.arcane.start.new_line", "fallback": ""} \
	,{"text": "Arcane Core ", "color": "#edb97e"} \
	,{"score": {"name": "#arcane_core.internal:version.major", "objective": "arcane_core.state"}, "color": "#edb97e"} \
	,{"text": ".", "color": "#edb97e"} \
	,{"score": {"name": "#arcane_core.internal:version.minor", "objective": "arcane_core.state"}, "color": "#edb97e"} \
	,{"text": ".", "color": "#edb97e"} \
	,{"score": {"name": "#arcane_core.internal:version.patch", "objective": "arcane_core.state"}, "color": "#edb97e"} \
	,{"text": " has been installed."} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.arcane.end.new_line", "fallback": ""} \
]

execute if data storage arcane_core.internal:core root.installation.success[0] run function arcane_core.internal:util/installation/success/main
execute if data storage arcane_core.internal:core root.installation.warning[0] run function arcane_core.internal:util/installation/warning/main

tellraw @s [ \
	 {"translate": "arcane_core.utility.empty", "fallback": "[!] You do not have the ", "color": "#c44949"} \
	,{"translate": "arcane_core.utility.empty", "fallback": "Arcane Core", "color": "#edb97e"}\
	,{"translate": "arcane_core.utility.empty", "fallback": " resource pack.\nClick ", "color": "#c44949"} \
	,{"translate": "arcane_core.utility.empty", "fallback": "[HERE]", "color": "#5991ec" \
		,"clickEvent": { \
			 "action": "open_url" \
			,"value": "https://modrinth.com/datapack/arcane-core" \
		} \
	} \
	,{"translate": "arcane_core.utility.empty", "fallback": " to download.", "color": "#c44949"}\
]
