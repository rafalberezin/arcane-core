#> arcane_core.internal:core/tick_reset
#
# @internal
#
# @handles #arcane_core.internal:core/tick

execute as @a at @s run function arcane_core.internal:core/player/tick_reset

scoreboard players reset #arcane_core.internal:time.day_time.hours arcane_core.math
scoreboard players reset #arcane_core.internal:time.day_time.minutes arcane_core.math
scoreboard players reset #arcane_core.internal:time.day_time.minutes.leading_zero arcane_core.math
scoreboard players reset #arcane_core.internal:time.day_time.ticks arcane_core.math
scoreboard players reset #arcane_core.internal:time.moon.phase arcane_core.math

data remove storage arcane_core.internal:temp /.moon
