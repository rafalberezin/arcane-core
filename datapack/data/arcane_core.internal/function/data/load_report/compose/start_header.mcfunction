#> arcane_core.internal:data/load_report/compose/start_header
#
# @internal

data modify storage arcane_core.internal:core /.load_report set value [[\
	{text: ""}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.internal:icon.premade.section.arcane.start.new_line", fallback: ""}, \
	{translate: "arcane_core.internal:util.empty", fallback: "%s", with: [{ \
		text: "", color: "#2c2f58", extra: [ \
			{translate: "arcane_core.internal:util.empty", fallback: "["}, \
			{translate: "arcane_core.internal:util.empty", fallback: "@", color: "#edb97e"}, \
			{translate: "arcane_core.internal:util.empty", fallback: "] "}, \
		], \
	}]}, \
	{text: "Arcane Core ", color: "#edb97e"}, \
	{text: "", color: "#edb97e"}, \
	{text: " has been installed."}, \
]]

data modify storage arcane_core.internal:temp /.any set value []
execute store result storage arcane_core.internal:temp /.macro.major int 1 run scoreboard players get #arcane_core.internal:core.version.major arcane_core.api.state
execute store result storage arcane_core.internal:temp /.macro.minor int 1 run scoreboard players get #arcane_core.internal:core.version.minor arcane_core.api.state
execute store result storage arcane_core.internal:temp /.macro.patch int 1 run scoreboard players get #arcane_core.internal:core.version.patch arcane_core.api.state

function arcane_core.internal:data/load_report/compose_entry/format_version_m with storage arcane_core.internal:temp /.macro
data modify storage arcane_core.internal:core /.load_report[-1][4].text set from storage arcane_core.internal:temp /.string

data modify storage arcane_core.internal:core /.load_report[-1] append value \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.internal:icon.premade.section.arcane.end.new_line", fallback: ""}
