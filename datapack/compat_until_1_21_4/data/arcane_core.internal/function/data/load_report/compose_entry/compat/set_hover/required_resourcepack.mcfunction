#> arcane_core.internal:data/load_report/compose_entry/compat/set_hover/optional_resourcepack
#
# @internal

data modify storage arcane_core.internal:temp /.text_line[-1].hoverEvent set value { \
	action: "show_text", \
	contents: [ \
		{text: ""}, \
		{text: "Required resource pack missing", color: "#c44949"}, \
		{translate: "arcane_core.api:util.new_line", fallback: " "}, \
		{text: "This project provides a resoure pack "}, \
		{text: "required", color: "#edb97e"}, \
		{text: " for full functionality."}, \
		{translate: "arcane_core.api:util.new_line", fallback: " "}, \
		{text: "You "}, \
		{text: "must enable it", color: "#edb97e"}, \
		{text: " for this project to "}, \
		{text: "work properly", color: "#edb97e"}, \
		{text: "."}, \
	], \
}
