#> arcane_core.api:data/number/if_non_negative
#
# Check if the number is non-negative.
# Doesn't validate the input data type,
# and will always succeed for other types.
#
# @api
#
# @input
# 	storage
# 		arcane_core.api:io in.any
# 			A value to be checked.
#
# @returns Whether the given number is non-negative.

execute store result score #arcane_core.internal:temp arcane_core.state run data get storage arcane_core.api:io in.any
return run execute if score #arcane_core.internal:temp arcane_core.state matches 0..
