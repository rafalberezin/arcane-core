#> arcane_core.internal:util/entity/kill
#
# @internal

execute unless entity @s[tag=arcane_core.internal.entity.kill.recursive] run return run kill @s
function arcane_core.internal:util/entity/kill_recursive
