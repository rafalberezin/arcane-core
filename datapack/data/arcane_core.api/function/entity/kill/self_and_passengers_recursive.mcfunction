#> arcane_core.api:entity/kill/self_and_passengers_recursive
#
# Kill the executing entity and all of its passengers recursively
# at the end of their turn of framework's ENTITY TICK PHASE.
#
# The passanger's will tick one last time before being killed, unless already excluded from ticking.
# Depending on the execution order, this might happen on the next tick for some passengers.
#
# @api
# @context entity

function arcane_core.internal:util/entity/mark_recursive/kill
