#> arcane_core.api:time/day_night/if_night
#
# Check if it's currently night.
#
# @api
#
# @returns
# 	Whether it's currently night.

execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.api.math matches 0.. \
	store result score #arcane_core.internal:time.day_time.ticks arcane_core.api.math \
	run time query daytime

return run execute if score #arcane_core.internal:time.day_time.ticks arcane_core.api.math matches 12542..23459
