#> arcane_core.api:time/moon/get_phase
#
# Calculate the current phase of the moon (1-8).
#
# @api
#
# @output
#	score #arcane_core.api:out.time.moon.phase arcane_core.api.math
# 		The current moon phase (1-8).

execute if score #arcane_core.internal:time.moon.phase arcane_core.api.math matches 0.. \
	run return run scoreboard players operation #arcane_core.api:out.time.moon.phase arcane_core.api.math = #arcane_core.api:out.time.moon.phase arcane_core.api.math

execute store result score #arcane_core.internal:time.moon.phase arcane_core.api.math run time query day
scoreboard players operation #arcane_core.internal:time.moon.phase arcane_core.api.math %= #arcane_core.api:const.8 arcane_core.api.math
scoreboard players add #arcane_core.internal:time.moon.phase arcane_core.api.math 1
scoreboard players operation #arcane_core.api:out.time.moon.phase arcane_core.api.math = #arcane_core.internal:time.moon.phase arcane_core.api.math
