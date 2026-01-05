#> arcane_core.api:data/if_type/number
#
# Check if the given value is a number.
# Booleans are also numbers (0b and 1b).
#
# @api
#
# @input
# 	storage
# 		arcane_core.api:io in.any
# 			A value to be checked.
#
# @returns Whether the given value is a number.

execute store success score #arcane_core.internal:temp arcane_core.state \
	run data get storage arcane_core.api:io in.any 1

return run scoreboard players get #arcane_core.internal:temp arcane_core.state
