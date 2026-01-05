#> arcane_core.api:data/if_type/boolean
#
# Check if the given value is a boolean.
#
# Booleans are just bytes, meaning this function
# treats manually set 0b and 1b values as booleans.
#
# @api
#
# @input
# 	storage
# 		arcane_core.api:io in.any
# 			A value to be checked.
#
# @returns Whether the given value is a boolean.

data modify storage arcane_core.internal:temp /.any set value true
execute store success score #arcane_core.internal:temp arcane_core.state \
	run data modify storage arcane_core.internal:temp /.any set from storage arcane_core.api:io in.any
execute if score #arcane_core.internal:temp arcane_core.state matches 0 run return 1

data modify storage arcane_core.internal:temp /.any set value false
execute store success score #arcane_core.internal:temp arcane_core.state \
	run data modify storage arcane_core.internal:temp /.any set from storage arcane_core.api:io in.any
execute if score #arcane_core.internal:temp arcane_core.state matches 0 run return 1

return 0
