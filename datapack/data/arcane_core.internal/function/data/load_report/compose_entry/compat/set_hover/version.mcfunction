#> arcane_core.internal:data/load_report/compose_entry/compat/set_hover/version
#
# @internal

data modify storage arcane_core.internal:temp /.text_line[-1].hover_event set value { \
	action: "show_text", \
	value: [ \
		{text: "Version: "}, \
		{text: "", color: "#edb97e"}, \
	] \
}

data modify storage arcane_core.internal:temp /.text_line[-1].hover_event.value[1].text set from storage arcane_core.internal:temp /.string
