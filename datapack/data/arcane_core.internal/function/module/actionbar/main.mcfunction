#> arcane_core.internal:module/actionbar/main
#
# @internal
#
# @handles #arcane_core.internal:core/player/tick

execute unless entity @s[tag=arcane_core.internal.module.actionbar.in_use] run function #arcane_core.internal:module/actionbar/display
tag @s remove arcane_core.internal.module.actionbar.in_use
