#> arcane_core.internal:util/macro/call/full_positioned
#
# @internal
#
# @macro
# 	dim: string
# 		resource location of a dimension
# 	x: double
# 		x coordinate
# 	y: double
# 		y coordinate
# 	z: double
# 		z coordinate
# 	function: string
# 		resource location of a function to call

$execute in $(dim) positioned $(x) $(y) $(z) run function $(function)
