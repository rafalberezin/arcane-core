#> arcane_core.internal:data/load_report/compose_entry/compat/set_hover/optional_resourcepack
#
# @internal

data modify storage arcane_core.internal:temp /.text_line[-1].hoverEvent set value { \
		action: "show_text", \
		contents: [ \
			{text: ""}, \
			{text: "Optional resource pack missing", color: "#edb97e"}, \
			{translate: "arcane_core.api:util.new_line", fallback: " "}, \
			{text: "This project provides an "}, \
			{text: "optional", color: "#edb97e"}, \
			{text: " resoure pack,"}, \
			{translate: "arcane_core.api:util.new_line", fallback: " "}, \
			{text: "that can "}, \
			{text: "enhance", color: "#edb97e"}, \
			{text: " your experience."}, \
			{translate: "arcane_core.api:util.new_line", fallback: " "}, \
			{text: "Consider using it."}, \
		], \
	}
