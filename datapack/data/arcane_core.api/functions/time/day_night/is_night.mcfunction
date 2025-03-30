#> arcane_core.api:time/day_night/is_night
#
# Check if it's currently night.
#
# @api

execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 0.. store result score #arcane_core.internal:time.day_time.ticks arcane_core.math run time query daytime
return run execute if score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 12542..23459
