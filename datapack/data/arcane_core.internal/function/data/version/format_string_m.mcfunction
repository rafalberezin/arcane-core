#> arcane_core.internal:data/version/format_string_m
#
# @internal
#
# @macro
# 	major int @ 0..
# 	minor int @ 0..
# 	patch int @ 0..

$data modify storage arcane_core.internal:temp /.string set value "$(major).$(minor).$(patch)"
