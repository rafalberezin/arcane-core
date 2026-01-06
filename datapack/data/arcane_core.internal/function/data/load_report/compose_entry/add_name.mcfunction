#> arcane_core.internal:data/load_report/compose_entry/add_name
#
# @internal

data modify storage arcane_core.internal:temp /.text_blob append value {text: ""}
data modify storage arcane_core.internal:temp /.text_blob[-1].text set from storage arcane_core.internal:temp /.phase.register_project.project.name
