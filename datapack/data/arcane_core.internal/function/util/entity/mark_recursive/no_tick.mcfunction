#> arcane_core.internal:util/entity/mark_recursive/no_tick
#
# @internal

execute unless entity @s[tag=arcane_core.internal.entity.kill] run tag @s add arcane_core.internal.entity.no_tick
execute on passengers run function arcane_core.internal:util/entity/mark_recursive/no_tick
