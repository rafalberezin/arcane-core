#> arcane_core.internal:data/load_report/compose_entry/compat/set_hover/version
#
# @internal

data modify storage arcane_core.internal:temp /.text_line[-1].hoverEvent set value { \
	action: "show_text", \
	contents: [ \
		{text: "Version: "}, \
		{text: "", color: "#edb97e"}, \
	] \
}

data modify storage arcane_core.internal:temp /.text_line[-1].hoverEvent.contents[1].text set from storage arcane_core.internal:temp /.string
