#> arcane_core.internal:data/storage/load
#
# @internal

data modify storage arcane_core.internal:temp / set value { phase: { register_project: {} } }

data modify storage arcane_core.internal:core / set value { \
	errors: [], \
	load_report: [], \
}
