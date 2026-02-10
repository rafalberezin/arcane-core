#> arcane_core.internal:data/load_report/compose/compose_resourcepack_mismatch_notice
#
# @internal

data modify storage arcane_core.internal:temp /.text_line set value [ \
	{translate: "", fallback: "%s", with: [ \
		{text: "", extra: [ \
			{translate: "arcane_core.api:icon.premade.section.info.end"}, \
			{translate: "arcane_core.api:icon.premade.section.warning.start.new_line"}, \
			{text: "You have an old version of "}, \
			{text: "Arcane Core", color: "#edb97e"}, \
			{translate: "arcane_core.api:icon.premade.section.warning.continue.new_line"}, \
			{text: "resource pack: "}, \
			{translate: "arcane_core.internal:util.version", color: "#edb97e"}, \
			{translate: "arcane_core.api:icon.premade.section.warning.continue.new_line"}, \
			{text: "Required minimum version: "}, \
			{text: "", color: "#edb97e"}, \
			{translate: "arcane_core.api:icon.premade.section.warning.end.new_line"}, \
		]}, \
	]}, \
]

data modify storage arcane_core.internal:temp /.text_line[0].translate set from storage arcane_core.internal:core /.version.resourcepack.key
data modify storage arcane_core.internal:temp /.text_line[0].with[0].extra[9].text set from storage arcane_core.internal:core /.version.resourcepack.str

