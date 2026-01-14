#> arcane_core.internal:content/actionbar/clock/display
#
# @internal
#
# @handles #arcane_core.internal:module/actionbar/display

execute unless entity @s[tag=arcane_core.internal.module.actionbar.display.clock] run return 0

function arcane_core.api:time/day_time/get_hours_and_minutes

execute unless score #arcane_core.internal:time.day_time.ticks arcane_core.math matches 12542..23459 \
	run return run title @s actionbar [{"text": ""}, \
		{"font": "arcane_core.api:icon/decorative", "text": "["}, \
		{"score": { "name": "#arcane_core.api:time.day_time.hours", "objective": "arcane_core.math" }}, \
		{"text": ":"}, \
		{"score": { "name": "#arcane_core.api:time.day_time.minutes.leading_zero", "objective": "arcane_core.math" }}, \
		{"score": { "name": "#arcane_core.api:time.day_time.minutes", "objective": "arcane_core.math" }}, \
		{"font": "arcane_core.api:icon/decorative", "text": "|"}, \
		{"font": "arcane_core.api:icon/module", "translate": "arcane_core.api:icon.time.sun"}, \
		{"font": "arcane_core.api:icon/decorative", "text": "]"} \
	]

function arcane_core.internal:util/time/moon/get_icon/main

title @s actionbar [{"text": ""}, \
	{"font": "arcane_core.api:icon/decorative", "text": "["}, \
	{"score": { "name": "#arcane_core.api:time.day_time.hours", "objective": "arcane_core.math" }}, \
	{"text": ":"}, \
	{"score": { "name": "#arcane_core.api:time.day_time.minutes.leading_zero", "objective": "arcane_core.math" }}, \
	{"score": { "name": "#arcane_core.api:time.day_time.minutes", "objective": "arcane_core.math" }}, \
	{"font": "arcane_core.api:icon/decorative", "text": "|"}, \
	{"storage": "arcane_core.internal:temp", "nbt": "/.moon", "interpret": true}, \
	{"font": "arcane_core.api:icon/decorative", "text": "]"} \
]
