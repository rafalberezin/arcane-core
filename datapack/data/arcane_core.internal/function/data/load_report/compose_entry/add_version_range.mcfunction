#> arcane_core.internal:data/load_report/compose_entry/add_version_range
#
# @internal

data modify storage arcane_core.internal:temp /.text_blob append value {text: " "}
data modify storage arcane_core.internal:temp /.text_blob append value { \
	text: "[", extra: [ \
		{text: "", color: "#edb97e"}, {text: ", "}, {text: "", color: "#edb97e"}, {text: ")"}, \
	], \
	hover_event: { \
		action: "show_text", \
		value: [ \
			{text: "Requires "}, \
			{text: "Arcane Core", color: "#edb97e"}, \
			{text: "\nversion "}, \
			{text: "", color: "#edb97e"}, \
			{text: " or newer,\nbut older than "}, \
			{text: "", color: "#edb97e"}, \
			{text: "."}, \
		] \
	}, \
}

data modify storage arcane_core.internal:temp /.macro.major set from storage arcane_core.internal:temp /.phase.register_project.project.core_version[0]
data modify storage arcane_core.internal:temp /.macro.minor set from storage arcane_core.internal:temp /.phase.register_project.project.core_version[1]
data modify storage arcane_core.internal:temp /.macro.patch set from storage arcane_core.internal:temp /.phase.register_project.project.core_version[2]

function arcane_core.internal:data/load_report/compose_entry/format_version_m with storage arcane_core.internal:temp /.macro
data modify storage arcane_core.internal:temp /.text_blob[-1].extra[0].text set from storage arcane_core.internal:temp /.string
data modify storage arcane_core.internal:temp /.text_blob[-1].hover_event.value[3].text set from storage arcane_core.internal:temp /.string

data modify storage arcane_core.internal:temp /.macro set value {minor: 0, patch: 0}
scoreboard players add #arcane_core.internal:temp.major arcane_core.state 1
execute store result storage arcane_core.internal:temp /.macro.major int 1 run scoreboard players get #arcane_core.internal:temp.major arcane_core.state

function arcane_core.internal:data/load_report/compose_entry/format_version_m with storage arcane_core.internal:temp /.macro
data modify storage arcane_core.internal:temp /.text_blob[-1].extra[2].text set from storage arcane_core.internal:temp /.string
data modify storage arcane_core.internal:temp /.text_blob[-1].hover_event.value[5].text set from storage arcane_core.internal:temp /.string

