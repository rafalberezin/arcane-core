#> arcane_core.internal:data/load_report/compose/add_warning_section
#
# @internal

data modify storage arcane_core.internal:temp /.text_blob set value [ \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.warning.start.new_line", fallback: "\n"}, \
	{text: "These projects require a different version", color: "#c44949"}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.warning.continue.new_line", fallback: "\n"}, \
	{text: "of ", color: "#c44949"}, \
	{text: "Arcane Core", color: "#edb97e"}, \
	{text: " and might not work properly:", color: "#c44949"}, \
]
data modify storage arcane_core.internal:core /.load_report append from storage arcane_core.internal:temp /.text_blob[]

data modify storage arcane_core.internal:core /.load_report append from storage arcane_core.internal:temp /.phase.register_project.warning_blob[]

data modify storage arcane_core.internal:core /.load_report append value \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.warning.end.new_line", fallback: "\n"}
