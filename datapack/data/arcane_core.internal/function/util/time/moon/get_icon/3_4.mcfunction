#> arcane_core.internal:util/time/moon/get_icon/3_4
#
# @internal

execute if score #arcane_core.internal:time.moon.phase arcane_core.math matches 3 \
	run return run data modify storage arcane_core.internal:temp /.moon set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.time.moon.third_quarter"}

data modify storage arcane_core.internal:temp /.moon set value {font: "arcane_core.api:icon/module", translate: "arcane_core.api:icon.time.moon.waning_crescent"}
