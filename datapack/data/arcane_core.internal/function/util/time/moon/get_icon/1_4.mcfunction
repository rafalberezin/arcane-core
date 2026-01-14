#> arcane_core.internal:util/time/moon/get_icon/1_4
#
# @internal

execute if score #arcane_core.internal:time.moon.phase arcane_core.math matches 1..2 \
	run return run function arcane_core.internal:util/time/moon/get_icon/1_2

function arcane_core.internal:util/time/moon/get_icon/3_4
