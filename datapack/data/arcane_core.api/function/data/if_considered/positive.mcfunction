#> arcane_core.api:data/if_considered/positive
#
# Check if the given value meets a positivity criteria depending on it's type.
#
# Boolean: is `true`
# Number: is equal to or greater than 1
# String, Array, and Coumpound Tag: is not empty
#
# @api
#
# @input
# 	storage
# 		arcane_core.api:io in.any
# 			A value to be checked.
#
# @returns Whether the given value meets the criteria of it's type.

execute store result score #arcane_core.internal:temp arcane_core.api.state run data get storage arcane_core.api:io in.any
return run execute if score #arcane_core.internal:temp arcane_core.api.state matches 1..
