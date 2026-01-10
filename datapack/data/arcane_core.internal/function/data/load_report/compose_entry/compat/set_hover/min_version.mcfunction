#> arcane_core.internal:data/load_report/compose_entry/compat/set_hover/min_version
#
# @internal

data modify storage arcane_core.internal:temp /.text_line[-1].hover_event set value { \
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
}

data modify storage arcane_core.internal:temp /.text_line[-1].hover_event.value[3].text set from storage arcane_core.internal:temp /.string
