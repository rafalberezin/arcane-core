#> arcane_core.internal:data/load_report/compose_entry/start_entry
#
# @internal

execute if score #arcane_core.internal:error arcane_core.state = #arcane_core.internal:error.ok arcane_core.state \
	run return run data modify storage arcane_core.internal:temp /.text_blob set value [ \
		{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.success.continue.new_line", fallback: "\n"}, \
	]

data modify storage arcane_core.internal:temp /.text_blob set value [ \
	{font: "arcane_core.api:icon/composite", translate: "arcane_core.api:icon.section.warning.continue.new_line", fallback: "\n"}, \
]
