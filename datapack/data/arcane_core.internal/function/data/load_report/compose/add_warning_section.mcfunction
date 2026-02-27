#> arcane_core.internal:data/load_report/compose/add_warning_section
#
# @internal

data modify storage arcane_core.internal:core /.load_report append value [ \
	{text: ""}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.warning.start", fallback: ""}, \
	{translate: "arcane_core.internal:util.empty", fallback: "[!] ", color: "#c44949"}, \
	{text: "These projects require a different version", color: "#c44949"}, \
]
function arcane_core.internal:data/load_report/compose/compat_adaptive_newline

data modify storage arcane_core.internal:core /.load_report append value [ \
	{text: ""}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.warning.continue", fallback: ""}, \
	{translate: "arcane_core.internal:util.empty", fallback: " |  ", color: "#c44949"}, \
	{text: "of ", color: "#c44949"}, \
	{text: "Arcane Core", color: "#edb97e"}, \
	{text: " and might not work properly:", color: "#c44949"}, \
]
function arcane_core.internal:data/load_report/compose/compat_adaptive_newline

data modify storage arcane_core.internal:core /.load_report append from storage arcane_core.internal:temp /.load_phase.projects.warning_blob[]

data modify storage arcane_core.internal:core /.load_report[-1] append value \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.warning.end.new_line", fallback: ""}
