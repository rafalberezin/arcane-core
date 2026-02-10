#> arcane_core.internal:data/auth/load
#
# @internal

execute unless score #arcane_core.internal:core.auth.token arcane_core.api.state matches 1..2147483647 \
	run scoreboard players set #arcane_core.internal:core.auth.token arcane_core.api.state 0
