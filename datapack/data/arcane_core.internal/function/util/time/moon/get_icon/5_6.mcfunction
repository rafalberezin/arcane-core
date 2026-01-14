#> arcane_core.internal:util/time/moon/get_icon/5_6
#
# @internal

execute if score #arcane_core.internal:time.moon.phase arcane_core.math matches 5 \
	run return run data modify storage arcane_core.internal:temp /.moon set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.time.moon.new_moon"}

data modify storage arcane_core.internal:temp /.moon set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.time.moon.waxing_crescent"}
