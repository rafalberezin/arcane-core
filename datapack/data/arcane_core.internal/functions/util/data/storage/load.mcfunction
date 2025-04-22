#> arcane_core.internal:util/data/storage/load
#
# @internal

data remove storage arcane_core.internal:temp root
data modify storage arcane_core.internal:core root set value { \
	 installation: {success: [], warning: []} \
}
