#> arcane_core.internal:data/load_report/compose_entry/add_version_range
#
# @internal

data modify storage arcane_core.internal:temp /.text_line append value {text: " "}
data modify storage arcane_core.internal:temp /.text_line append value { \
	text: "", extra: [ \
		{text: "["}, \
		{text: "", color: "#edb97e"}, \
		{text: ", "}, \
		{text: "", color: "#edb97e"}, \
		{text: ")"}, \
	], \
}

data modify storage arcane_core.internal:temp /.macro.major set from storage arcane_core.internal:temp /.register.project.core_version[0]
data modify storage arcane_core.internal:temp /.macro.minor set from storage arcane_core.internal:temp /.register.project.core_version[1]
data modify storage arcane_core.internal:temp /.macro.patch set from storage arcane_core.internal:temp /.register.project.core_version[2]

function arcane_core.internal:data/version/format_string_m with storage arcane_core.internal:temp /.macro
data modify storage arcane_core.internal:temp /.text_line[-1].extra[1].text set from storage arcane_core.internal:temp /.string

function arcane_core.internal:data/load_report/compose_entry/compat/set_hover/min_version

data modify storage arcane_core.internal:temp /.macro set value {minor: 0, patch: 0}
scoreboard players add #arcane_core.internal:temp.major arcane_core.api.state 1
execute store result storage arcane_core.internal:temp /.macro.major int 1 run scoreboard players get #arcane_core.internal:temp.major arcane_core.api.state

function arcane_core.internal:data/version/format_string_m with storage arcane_core.internal:temp /.macro
data modify storage arcane_core.internal:temp /.text_line[-1].extra[3].text set from storage arcane_core.internal:temp /.string

function arcane_core.internal:data/load_report/compose_entry/compat/set_hover/max_version
