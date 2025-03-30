#> arcane_core.internal:module/actionbar/main
#
# @internal

execute unless entity @s[tag=arcane_core.internal.module.actionbar.in_use] run function #arcane_core.internal:module/actionbar/display

tag @s remove arcane_core.internal.module.actionbar.in_use
