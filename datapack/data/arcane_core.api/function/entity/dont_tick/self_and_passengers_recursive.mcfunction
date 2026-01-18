#> arcane_core.api:entity/dont_tick/self_and_passengers_recursive
#
# Prevent the executing entity and all of its passengers recursively 
# from ticking during the framework's ENTITY TICK PHASE.
# This takes effect starting on the next tick.
#
# @api
# @context entity

function arcane_core.internal:util/entity/mark_recursive/no_tick
