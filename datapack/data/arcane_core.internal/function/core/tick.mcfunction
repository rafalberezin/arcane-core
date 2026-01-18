#> arcane_core.internal:core/tick
#
# @internal
#
# @handles #arcane_core.internal:core/tick

execute as @a at @s run function #arcane_core.internal:core/player/tick
execute as @e[tag=!arcane_core.internal.entity.no_tick] at @s run function arcane_core.internal:core/entity/tick
