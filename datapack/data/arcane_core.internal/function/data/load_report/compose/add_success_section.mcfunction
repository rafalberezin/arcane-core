#> arcane_core.internal:data/load_report/compose/add_success_section
#
# @internal

data modify storage arcane_core.internal:core /.load_report append value [ \
	{text: ""}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.success.start", fallback: ""}, \
	{translate: "arcane_core.internal:util.empty", fallback: "[v] ", color: "#69ca73"}, \
	{text: "Successfully installed the following projects:", color: "#69ca73"}, \
]
function arcane_core.internal:data/load_report/compose/compat_adaptive_newline

data modify storage arcane_core.internal:core /.load_report append from storage arcane_core.internal:temp /.load_phase.projects.success_blob[]

data modify storage arcane_core.internal:core /.load_report[-1] append value \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.success.end.new_line", fallback: ""}
