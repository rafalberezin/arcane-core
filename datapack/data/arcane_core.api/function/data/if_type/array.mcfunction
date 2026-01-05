#> arcane_core.api:data/if_type/array
#
# Check if the given value is an array.
#
# @api
#
# @input
# 	storage
# 		arcane_core.api:io in.any
# 			A value to be checked.
#
# @returns Whether the given value is an array.

execute store success score #arcane_core.internal:temp arcane_core.state \
	run data modify storage arcane_core.api:io in.any append value 0
data remove storage arcane_core.api:io in.any[-1]

return run scoreboard players get #arcane_core.internal:temp arcane_core.state
