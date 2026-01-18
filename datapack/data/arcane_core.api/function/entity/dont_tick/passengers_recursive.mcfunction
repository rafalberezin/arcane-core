#> arcane_core.api:entity/dont_tick/passengers_recursive
#
# Prevent all of the executing entity's passengers recursively
# from ticking during the framework's ENTITY TICK PHASE.
# This takes effect starting on the next tick.
#
# @api
# @context entity

execute on passengers run function arcane_core.internal:util/entity/mark_recursive/no_tick
