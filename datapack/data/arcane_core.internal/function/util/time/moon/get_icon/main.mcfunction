#> arcane_core.internal:util/time/moon/get_icon/main
#
# @internal

execute if data storage arcane_core.internal:temp /.moon run return 0

function arcane_core.api:time/moon/get_phase

execute if score #arcane_core.internal:time.moon.phase arcane_core.api.math matches 1..4 \
	run return run function arcane_core.internal:util/time/moon/get_icon/1_4

function arcane_core.internal:util/time/moon/get_icon/5_8
