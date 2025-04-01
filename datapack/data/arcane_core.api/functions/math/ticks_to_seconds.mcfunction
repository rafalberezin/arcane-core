#> arcane_core.api:math/ticks_to_seconds
#
# Convert a number of ticks to seconds rounded up.
#
# @api
# @input
# 	score #arcane_core.api:math.ticks_to_seconds.in arcane_core.math
# @output
# 	score #arcane_core.api:math.ticks_to_seconds.out arcane_core.math

scoreboard players operation #arcane_core.api:math.ticks_to_seconds.out arcane_core.math = #arcane_core.api:math.ticks_to_seconds.in arcane_core.math
scoreboard players operation #arcane_core.api:math.ticks_to_seconds.out arcane_core.math > #arcane_core.api:const.0 arcane_core.math
scoreboard players operation #arcane_core.api:math.ticks_to_seconds.out arcane_core.math += #arcane_core.api:const.19 arcane_core.math
scoreboard players operation #arcane_core.api:math.ticks_to_seconds.out arcane_core.math /= #arcane_core.api:const.20 arcane_core.math
