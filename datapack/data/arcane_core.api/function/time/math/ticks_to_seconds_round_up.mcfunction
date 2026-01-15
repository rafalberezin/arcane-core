#> arcane_core.api:time/math/ticks_to_seconds_round_up
#
# Convert a number of ticks to seconds rounded up.
# Useful for displaying tick-based timers as seconds
# as it avoids showing `0s` while time remains.
#
# Technically this function rounds away from 0,
# meaning negatives are actually rounded down.
#
# Examples:
# -21 -> -2
# -20 -> -1
#  -1 -> -1
#   0 ->  0
#   1 ->  1
#  20 ->  1
#  21 ->  2
#
# @api
#
# @input
# 	score #arcane_core.api:in.time.ticks_to_seconds arcane_core.api.math
# @output
# 	score #arcane_core.api:out.time.ticks_to_seconds arcane_core.api.math

scoreboard players operation #arcane_core.api:out.time.ticks_to_seconds arcane_core.api.math = #arcane_core.api:in.time.ticks_to_seconds arcane_core.api.math
execute if score #arcane_core.api:out.time.ticks_to_seconds arcane_core.api.math matches 1.. \
	run scoreboard players add #arcane_core.api:out.time.ticks_to_seconds arcane_core.api.math 19
scoreboard players operation #arcane_core.api:out.time.ticks_to_seconds arcane_core.api.math /= #arcane_core.api:const.20 arcane_core.api.math
