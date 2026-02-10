#> arcane_core.internal:data/auth/player/load
#
# @internal

execute unless score @s arcane_core.internal.auth.token matches 1..2147483647 \
	run scoreboard players set @s arcane_core.internal.auth.token 0
