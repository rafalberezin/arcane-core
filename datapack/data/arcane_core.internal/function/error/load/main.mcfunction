#> arcane_core.internal:error/load/main
#
# @internal

scoreboard players set #arcane_core.internal:error arcane_core.state 0

scoreboard players set #arcane_core.internal:error.ok arcane_core.state 0
data modify storage arcane_core.internal:core /.errors append value "Everything is ok."

function arcane_core.internal:error/load/register_project
