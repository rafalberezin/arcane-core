#> arcane_core.internal:util/entity/mark_recursive/kill
#
# @internal

execute on passengers run function arcane_core.internal:util/entity/mark_recursive/kill
execute if entity @s[tag=arcane_core.internal.entity.no_tick] run return run kill @s
tag @s add arcane_core.internal.entity.kill
