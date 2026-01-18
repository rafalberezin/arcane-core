#> arcane_core.internal:core/entity/tick
#
# @internal

function #arcane_core.api:entity/tick

execute if entity @s[tag=arcane_core.internal.entity.kill] run kill @s
