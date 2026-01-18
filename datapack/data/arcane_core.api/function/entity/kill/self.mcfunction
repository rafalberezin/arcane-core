#> arcane_core.api:entity/kill/self
#
# Kill the executing entity at the end of its turn of framework's ENTITY TICK PHASE.
#
# @api
# @context entity

execute if entity @s[tag=arcane_core.internal.entity.no_tick] run return run kill @s
tag @s add arcane_core.internal.entity.kill
