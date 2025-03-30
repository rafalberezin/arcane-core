#> arcane_core.api:time/day_night/is_dday
#
# Check if it's currently day.
#
# @api

execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 0.. store result score #arcane_core.internal:time.day_time.ticks arcane_core.math run time query daytime
return run execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 12542..23459
