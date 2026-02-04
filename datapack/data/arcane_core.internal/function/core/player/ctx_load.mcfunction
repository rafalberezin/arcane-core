#> arcane_core.internal:core/player/ctx_load
#
# @internal
#
# @handles #arcane_core.internal:core/load

execute as @a[scores={arcane_core.internal.event.join=1}] at @s run function #arcane_core.internal:core/player/load
