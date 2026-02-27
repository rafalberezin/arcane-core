#> arcane_core.internal:data/load_report/compose_entry/add_name
#
# @internal

data modify storage arcane_core.internal:temp /.text_line append value {text: ""}
data modify storage arcane_core.internal:temp /.text_line[-1].text set from storage arcane_core.internal:temp /.register.project.name
