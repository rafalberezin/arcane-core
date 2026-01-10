#> arcane_core.internal:data/load_report/compose/add_core_version_warning/compose_version_list
#
# @internal

data modify storage arcane_core.internal:temp /.macro.major set from storage arcane_core.internal:temp /.any[0][0]
data modify storage arcane_core.internal:temp /.macro.minor set from storage arcane_core.internal:temp /.any[0][1]
data modify storage arcane_core.internal:temp /.macro.patch set from storage arcane_core.internal:temp /.any[0][2]
function arcane_core.internal:data/load_report/compose_entry/format_version_m with storage arcane_core.internal:temp /.macro

data modify storage arcane_core.internal:temp /.text_line append value {translate: "arcane_core.api:util.new_line", fallback: "  "}
data modify storage arcane_core.internal:temp /.text_line append value {text: ""}
data modify storage arcane_core.internal:temp /.text_line[-1].text set from storage arcane_core.internal:temp /.string

data remove storage arcane_core.internal:temp /.any[0]
execute if data storage arcane_core.internal:temp /.any[0] \
	run function arcane_core.internal:data/load_report/compose/add_core_version_warning/compose_version_list
