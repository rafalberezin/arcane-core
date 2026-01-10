#> arcane_core.api:time/day_night/if_day
#
# Check if it's currently day.
#
# @api
#
# @returns
# 	Whether it's currently day.

execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 0.. \
	store result score #arcane_core.internal:time.day_time.ticks arcane_core.math \
	run time query daytime

return run execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 12542..23459
