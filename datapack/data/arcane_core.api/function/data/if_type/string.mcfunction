#> arcane_core.api:data/if_type/string
#
# Check if the given value is a string.
#
# @api
#
# @input
# 	storage
# 		arcane_core.api:io in.any
# 			A value to be checked.
#
# @returns Whether the given value is a string.

execute if function arcane_core.api:data/if_type/number run return 0

data remove storage arcane_core.internal:temp /.any
return run data modify storage arcane_core.internal:temp /.any set string storage arcane_core.api:io in.any
