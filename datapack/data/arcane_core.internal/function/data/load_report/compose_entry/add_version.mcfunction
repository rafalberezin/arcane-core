#> arcane_core.internal:data/load_report/compose_entry/add_version
#
# @internal

data modify storage arcane_core.internal:temp /.text_line append value {text: " "}
data modify storage arcane_core.internal:temp /.text_line append value { \
	text: "", \
	extra: [ \
		{ \
			translate: "arcane_core.internal:util.slot", fallback: "", \
			with: [{text: "", font: "arcane_core.api:icon/composite", extra: [ \
				{translate: "arcane_core.internal:icon.zw.misc.letter_token.small.blue"}, \
				{translate: "arcane_core.api:util.space.2"}, \
				{text: "v"}, \
				{translate: "arcane_core.api:util.space.1"}, \
			]}], \
		}, \
		{ \
			translate: "arcane_core.internal:util.empty", \
			fallback: "[v]", \
			color: "#5991ec", \
		}, \
	], \
}

data modify storage arcane_core.internal:temp /.macro.major set from storage arcane_core.internal:temp /.register.project.version[0]
data modify storage arcane_core.internal:temp /.macro.minor set from storage arcane_core.internal:temp /.register.project.version[1]
data modify storage arcane_core.internal:temp /.macro.patch set from storage arcane_core.internal:temp /.register.project.version[2]
function arcane_core.internal:data/version/format_string_m with storage arcane_core.internal:temp /.macro

function arcane_core.internal:data/load_report/compose_entry/compat/set_hover/version
