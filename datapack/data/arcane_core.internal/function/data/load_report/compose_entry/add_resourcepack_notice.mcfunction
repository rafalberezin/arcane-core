#> arcane_core.internal:data/load_report/compose_entry/add_resourcepack_notice
#
# @internal

execute store result score #arcane_core.internal:temp arcane_core.state \
	run data get storage arcane_core.internal:temp /.phase.register_project.project.resourcepack.required

data modify storage arcane_core.internal:temp /.text_blob append value {text: " "}

data modify storage arcane_core.internal:temp /.text_blob append value { \
	text: "[r]", \
	color: "#edb97e", \
}

function arcane_core.internal:data/load_report/compose_entry/format_translation_key_m with storage arcane_core.internal:temp /.phase.register_project.project
data modify storage arcane_core.internal:temp /.text_blob[-1].fallback set from storage arcane_core.internal:temp /.string

execute if score #arcane_core.internal:temp arcane_core.state matches 0 \
	run return run data modify storage arcane_core.internal:temp /.text_blob[-1].hover_event set value { \
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


data modify storage arcane_core.internal:temp /.text_blob[-1].color set value "#c44949"
data modify storage arcane_core.internal:temp /.text_blob[-1].hover_event set value { \
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
