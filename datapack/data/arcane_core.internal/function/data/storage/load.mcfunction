#> arcane_core.internal:data/storage/load
#
# @internal

data modify storage arcane_core.internal:temp / set value { \
	load_phase: {}, \
	register: {}, \
	module: {}, \
}

data modify storage arcane_core.internal:core / set value { \
	errors: [], \
	load_report: [], \
	session: {id: 1}, \
}

execute store result storage arcane_core.internal:core /.session.id int 1 run random value 1..
