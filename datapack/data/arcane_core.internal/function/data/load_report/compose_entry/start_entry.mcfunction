#> arcane_core.internal:data/load_report/compose_entry/start_entry
#
# @internal

execute if score #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.ok arcane_core.api.state \
	run return run data modify storage arcane_core.internal:temp /.text_line set value [ \
		{text: ""}, \
		{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.success.continue", fallback: ""}, \
		{translate: "arcane_core.internal:util.empty", fallback: " |  ", color: "#69ca73"}, \
	]

data modify storage arcane_core.internal:temp /.text_line set value [ \
	{text: ""}, \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.premade.section.warning.continue", fallback: ""}, \
	{translate: "arcane_core.internal:util.empty", fallback: " |  ", color: "#c44949"}, \
]
