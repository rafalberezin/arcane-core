#> arcane_core.internal:data/load_report/compose/add_core_version_warning/compat_set_hover
#
# @internal

data modify storage arcane_core.internal:core /.load_report[-1][-1].hoverEvent set value {action: "show_text"}
data modify storage arcane_core.internal:core /.load_report[-1][-1].hoverEvent.contents set from storage arcane_core.internal:temp /.text_line
