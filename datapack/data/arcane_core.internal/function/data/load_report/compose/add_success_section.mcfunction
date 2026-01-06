#> arcane_core.internal:data/load_report/compose/add_success_section
#
# @internal

data modify storage arcane_core.internal:core /.load_report append value \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.success.start.new_line", fallback: "\n"}

data modify storage arcane_core.internal:core /.load_report append value \
	{text: "Successfully installed the following projects:", color: "#69ca73"}

data modify storage arcane_core.internal:core /.load_report append from storage arcane_core.internal:temp /.phase.register_project.success_blob[]

data modify storage arcane_core.internal:core /.load_report append value \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.success.end.new_line", fallback: "\n"}
