#> arcane_core.internal:data/load_report/compose_entry/add_version
#
# @internal

data modify storage arcane_core.internal:temp /.text_blob append value {text: " "}
data modify storage arcane_core.internal:temp /.text_blob append value { \
	text: "[v]", \
	color: "#5991ec", \
	hover_event: { \
		action: "show_text", \
		value: [ \
			{text: "Version: "}, \
			{text: "", color: "#edb97e"}, \
		] \
	}, \
}

data modify storage arcane_core.internal:temp /.macro.major set from storage arcane_core.internal:temp /.phase.register_project.project.version[0]
data modify storage arcane_core.internal:temp /.macro.minor set from storage arcane_core.internal:temp /.phase.register_project.project.version[1]
data modify storage arcane_core.internal:temp /.macro.patch set from storage arcane_core.internal:temp /.phase.register_project.project.version[2]

function arcane_core.internal:data/load_report/compose_entry/format_version_m with storage arcane_core.internal:temp /.macro
data modify storage arcane_core.internal:temp /.text_blob[-1].hover_event.value[1].text set from storage arcane_core.internal:temp /.string
