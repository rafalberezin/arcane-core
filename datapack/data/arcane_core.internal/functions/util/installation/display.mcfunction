#> arcane_core.internal:util/installation/display
#
# @internal
#
# @handles #arcane_core.internal:core/player/load

tellraw @s [ \
	 {"text": "\n"} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.info.start"} \
	,{"text": " Arcane Core ", "color": "#edb97e"} \
	,{"score": {"name": "#arcane_core.internal:version.major", "objective": "arcane_core.state"}, "color": "#edb97e"} \
	,{"text": ".", "color": "#edb97e"} \
	,{"score": {"name": "#arcane_core.internal:version.minor", "objective": "arcane_core.state"}, "color": "#edb97e"} \
	,{"text": ".", "color": "#edb97e"} \
	,{"score": {"name": "#arcane_core.internal:version.patch", "objective": "arcane_core.state"}, "color": "#edb97e"} \
	,{"text": " has been installed.\n"} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.info.end"} \
]

function arcane_core.internal:util/installation/success/main
function arcane_core.internal:util/installation/warning/main
