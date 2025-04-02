#> arcane_core.internal:util/entity/kill_recursive
#
# @internal

execute on passengers run function arcane_core.internal:util/entity/kill_recursive

tag @s add arcane_core.internal.entity.kill.dead
kill @s
