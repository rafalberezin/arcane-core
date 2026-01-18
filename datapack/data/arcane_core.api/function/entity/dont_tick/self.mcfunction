#> arcane_core.api:entity/dont_tick/self
#
# Prevent the executing entity from ticking during the framework's ENTITY TICK PHASE.
# This takes effect starting on the next tick.
#
# @api
# @context entity

execute unless entity @s[tag=arcane_core.internal.entity.kill] run tag @s add arcane_core.internal.entity.no_tick
