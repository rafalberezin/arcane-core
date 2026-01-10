#> arcane_core.api:time/day_time/get_ticks
#
# Calculate the current day time in ticks.
#
# @api
#
# @output
# 	score #arcane_core.api:time.day_time.ticks arcane_core.math
# 		Current day time in ticks.

execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 0.. \
	store result score #arcane_core.internal:time.day_time.ticks arcane_core.math \
	run time query daytime

scoreboard players operation #arcane_core.api:time.day_time.ticks arcane_core.math = #arcane_core.internal:time.day_time.ticks arcane_core.math
