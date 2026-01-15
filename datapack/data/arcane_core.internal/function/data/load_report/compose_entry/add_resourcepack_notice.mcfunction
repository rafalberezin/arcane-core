#> arcane_core.internal:data/load_report/compose_entry/add_resourcepack_notice
#
# @internal

execute store result score #arcane_core.internal:temp arcane_core.api.state \
	run data get storage arcane_core.internal:temp /.phase.register_project.project.resourcepack.required

data modify storage arcane_core.internal:temp /.text_line append value {text: " "}

data modify storage arcane_core.internal:temp /.text_line append value { \
	translate: "", \
	fallback: "%s%s", \
	with: [ \
		{ \
			translate: "arcane_core.internal:util.slot", fallback: "", \
			with: [{text: "", font: "arcane_core.api:icon/composite", extra: [ \
				{translate: "arcane_core.internal:icon.zw.misc.letter_token.small.bronze"}, \
				{translate: "arcane_core.api:util.space.2"}, \
				{text: "r"}, \
			]}], \
		}, \
		{ \
			translate: "arcane_core.internal:util.empty", \
			fallback: "[r]", \
			color: "#edb97e", \
		}, \
	], \
}

function arcane_core.internal:data/load_report/compose_entry/format_translation_key_m with storage arcane_core.internal:temp /.phase.register_project.project
data modify storage arcane_core.internal:temp /.text_line[-1].translate set from storage arcane_core.internal:temp /.string

execute if score #arcane_core.internal:temp arcane_core.api.state matches 0 \
	run return run function arcane_core.internal:data/load_report/compose_entry/compat/set_hover/optional_resourcepack

data modify storage arcane_core.internal:temp /.text_line[-1].with[0].with[0].extra[0].translate set value "arcane_core.internal:icon.zw.misc.letter_token.small.red"
data modify storage arcane_core.internal:temp /.text_line[-1].with[1].color set value "#c44949"

function arcane_core.internal:data/load_report/compose_entry/compat/set_hover/required_resourcepack
