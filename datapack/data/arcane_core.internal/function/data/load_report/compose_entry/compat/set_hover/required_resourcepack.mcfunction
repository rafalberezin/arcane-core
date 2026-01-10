#> arcane_core.internal:data/load_report/compose_entry/compat/set_hover/optional_resourcepack
#
# @internal

data modify storage arcane_core.internal:temp /.text_line[-1].hover_event set value { \
	action: "show_text", \
	value: [ \
		{text: ""}, \
		{text: "Required resource pack missing", color: "#c44949"}, \
		{text: "\nThis project provides a resoure pack "}, \
		{text: "required", color: "#edb97e"}, \
		{text: " for full functionality.\nYou "}, \
		{text: "must enable it", color: "#edb97e"}, \
		{text: " for this project to "}, \
		{text: "work properly", color: "#edb97e"}, \
		{text: "."}, \
	], \
}
