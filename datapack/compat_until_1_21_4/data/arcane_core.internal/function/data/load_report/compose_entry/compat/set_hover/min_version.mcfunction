#> arcane_core.internal:data/load_report/compose_entry/compat/set_hover/optional_resourcepack
#
# @internal

data modify storage arcane_core.internal:temp /.text_line[-1].hoverEvent set value { \
	action: "show_text", \
	contents: [ \
		{text: "Requires "}, \
		{text: "Arcane Core", color: "#edb97e"}, \
		{translate: "arcane_core.api:util.new_line", fallback: " "}, \
		{text: "version "}, \
		{text: "", color: "#edb97e"}, \
		{text: " or newer,"}, \
		{translate: "arcane_core.api:util.new_line", fallback: " "}, \
		{text: "but older than "}, \
		{text: "", color: "#edb97e"}, \
		{text: "."}, \
	] \
}

data modify storage arcane_core.internal:temp /.text_line[-1].hoverEvent.contents[4].text set from storage arcane_core.internal:temp /.string
