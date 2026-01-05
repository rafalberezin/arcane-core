#> arcane_core.api:data/if_type/compound_tag
#
# Check if the given value is a compound tag.
#
# @api
#
# @input
# 	storage
# 		arcane_core.api:io in.any
# 			A value to be checked.
#
# @returns Whether the given value is a compound tag.

execute store success score #arcane_core.internal:temp arcane_core.state \
	run data modify storage arcane_core.api:io in.any."arcane_core.internal:temp" set value 0
data remove storage arcane_core.api:io in.any."arcane_core.internal:temp"

return run scoreboard players get #arcane_core.internal:temp arcane_core.state
