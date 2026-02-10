#> arcane_core.internal:data/auth/refresh_token
#
# @internal

execute store result score #arcane_core.internal:core.auth.token arcane_core.api.state \
	run random value 1..2147483647
