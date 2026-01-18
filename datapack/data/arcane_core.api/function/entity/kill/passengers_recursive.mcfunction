#> arcane_core.api:entity/kill/passengers_recursive
#
# Kill all of the executing entity's passengers recursively
# at the end of their turn of framework's ENTITY TICK PHASE.
#
# The passanger's will tick one last time before being killed, unless already excluded from ticking.
# Depending on the execution order, this might happen on the next tick for some passengers.
#
# @api
# @context entity

execute on passengers run function arcane_core.internal:util/entity/mark_recursive/kill
