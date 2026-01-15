#> arcane_core.internal:util/time/day_time_hours_and_minutes/reuse
#
# @internal

scoreboard players operation #arcane_core.api:time.day_time.hours arcane_core.api.math = #arcane_core.internal:time.day_time.hours arcane_core.api.math
scoreboard players operation #arcane_core.api:time.day_time.minutes arcane_core.api.math = #arcane_core.internal:time.day_time.minutes arcane_core.api.math

execute if score #arcane_core.internal:time.day_time.minutes arcane_core.api.math matches ..9 \
	run return run scoreboard players set #arcane_core.api:time.day_time.minutes.leading_zero arcane_core.api.math 0

scoreboard players reset #arcane_core.api:time.day_time.minutes.leading_zero arcane_core.api.math
