#> arcane_core.internal:module/actionbar/display/clock/display
#
# @internal
#
# @handles #arcane_core.internal:module/actionbar/display

execute unless entity @s[tag=arcane_core.internal.module.actionbar.display.clock] run return 0

function arcane_core.api:time/day_time/get_hours_and_minutes

execute if score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 12542..23459 run return run title @s actionbar [ \
	 {"text": "[ ", "color": "white"} \
	,{"score": {"name": "#arcane_core.api:time.day_time.hours", "objective": "arcane_core.math"}, "color": "#ffd12f"} \
	,{"text": ":", "color": "#ffd12f"} \
	,{"score": {"name": "#arcane_core.api:time.day_time.minutes.leading_zero", "objective": "arcane_core.math"}, "color": "#ffd12f"} \
	,{"score": {"name": "#arcane_core.api:time.day_time.minutes", "objective": "arcane_core.math"}, "color": "#ffd12f"} \
	,{"text": " | "} \
	,{"text": "NIGHT", "color": "#4d77ad"} \
	,{"text": " ]"} \
]

title @s actionbar [ \
	 {"text": "[ ", "color": "white"} \
	,{"score": {"name": "#arcane_core.api:time.day_time.hours", "objective": "arcane_core.math"}, "color": "#ffd12f"} \
	,{"text": ":", "color": "#ffd12f"} \
	,{"score": {"name": "#arcane_core.api:time.day_time.minutes.leading_zero", "objective": "arcane_core.math"}, "color": "#ffd12f"} \
	,{"score": {"name": "#arcane_core.api:time.day_time.minutes", "objective": "arcane_core.math"}, "color": "#ffd12f"} \
	,{"text": " | "} \
	,{"text": "DAY", "color": "#ffd12f"} \
	,{"text": " ]"} \
]
