#> arcane_core.internal:data/load_report/compose_entry/compat/set_hover/optional_resourcepack
#
# @internal

data modify storage arcane_core.internal:temp /.text_line[-1].hover_event set value { \
		action: "show_text", \
		value: [ \
			{text: ""}, \
			{text: "Optional resource pack missing", color: "#edb97e"}, \
			{text: "\nThis project provides an "}, \
			{text: "optional", color: "#edb97e"}, \
			{text: " resoure pack,\nthat can "}, \
			{text: "enhance", color: "#edb97e"}, \
			{text: " your experience.\nConsider using it."}, \
		], \
	}
