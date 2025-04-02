#> arcane_core.internal:core/entity/tick
#
# @internal

execute if entity @s[tag=arcane_core.internal.entity.kill.dead] run return 0

function #arcane_core.api:entity/tick

execute if entity @s[tag=arcane_core.internal.entity.kill] run function arcane_core.internal:util/entity/kill
