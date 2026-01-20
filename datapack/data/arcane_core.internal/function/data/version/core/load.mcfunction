#> arcane_core.internal:data/version/core/load
#
# @internal

data modify storage arcane_core.internal:core /.version set value { \
	installed: { \
		arr: [0, 1, 0], \
		str: "0.1.0", \
	}, \
	present: [], \
}

execute store result score #arcane_core.internal:core.version.major arcane_core.api.state \
	run data get storage arcane_core.internal:core /.version.installed.arr[0]
execute store result score #arcane_core.internal:core.version.minor arcane_core.api.state \
	run data get storage arcane_core.internal:core /.version.installed.arr[1]
execute store result score #arcane_core.internal:core.version.patch arcane_core.api.state \
	run data get storage arcane_core.internal:core /.version.installed.arr[2]
