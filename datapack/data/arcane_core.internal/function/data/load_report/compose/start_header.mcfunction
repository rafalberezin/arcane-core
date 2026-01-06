#> arcane_core.internal:data/load_report/compose/start_header
#
# @internal

data modify storage arcane_core.internal:core /.load_report set value [{text: ""}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.arcane.start.new_line", fallback: "\n"}, \
	{text: "Arcane Core ", color: "#edb97e"}, \
	{text: "", color: "#edb97e"}, \
	{text: " has been installed."}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.arcane.end.new_line", fallback: "\n"}, \
]

data modify storage arcane_core.internal:temp /.any set value []
execute store result storage arcane_core.internal:temp /.macro.major int 1 run scoreboard players get #arcane_core.internal:core.version.major arcane_core.state
execute store result storage arcane_core.internal:temp /.macro.minor int 1 run scoreboard players get #arcane_core.internal:core.version.minor arcane_core.state
execute store result storage arcane_core.internal:temp /.macro.patch int 1 run scoreboard players get #arcane_core.internal:core.version.patch arcane_core.state

function arcane_core.internal:data/load_report/compose_entry/format_version_m with storage arcane_core.internal:temp /.macro
data modify storage arcane_core.internal:core /.load_report[3].text set from storage arcane_core.internal:temp /.string
