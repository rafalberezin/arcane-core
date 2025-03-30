#> arcane_core.api:time/get_hours_and_minutes
#
# Calculate the current day time in 24 hours format.
#
# @api
#
# @output
#   score #arcane_core.api:time.day_time.hours arcane_core.math
# 		Current day time hours.
# 	score #arcane_core.api:time.day_time.minutes arcane_core.math
# 		Current day time minutes.

execute if score #arcane_core.internal:time.day_time.hours arcane_core.math matches 0.. if score #arcane_core.internal:time.day_time.minutes arcane_core.math matches 0.. run return run function arcane_core.internal:util/time/day_time_hours_and_minutes/reuse

execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 0.. store result score #arcane_core.internal:time.day_time.ticks arcane_core.math run time query daytime

scoreboard players operation #arcane_core.internal:time.day_time.hours arcane_core.math = #arcane_core.internal:time.day_time.ticks arcane_core.math
scoreboard players operation #arcane_core.internal:time.day_time.hours arcane_core.math /= #arcane_core.api:const.1000 arcane_core.math
scoreboard players add #arcane_core.internal:time.day_time.hours arcane_core.math 6
scoreboard players operation #arcane_core.internal:time.day_time.hours arcane_core.math %= #arcane_core.api:const.24 arcane_core.math
scoreboard players operation #arcane_core.api:time.day_time.hours arcane_core.math = #arcane_core.internal:time.day_time.hours arcane_core.math

scoreboard players operation #arcane_core.internal:time.day_time.minutes arcane_core.math = #arcane_core.internal:time.day_time.ticks arcane_core.math
scoreboard players operation #arcane_core.internal:time.day_time.minutes arcane_core.math %= #arcane_core.api:const.1000 arcane_core.math
scoreboard players operation #arcane_core.internal:time.day_time.minutes arcane_core.math *= #arcane_core.api:const.60 arcane_core.math
scoreboard players operation #arcane_core.internal:time.day_time.minutes arcane_core.math /= #arcane_core.api:const.1000 arcane_core.math
scoreboard players operation #arcane_core.api:time.day_time.minutes arcane_core.math = #arcane_core.internal:time.day_time.minutes arcane_core.math
