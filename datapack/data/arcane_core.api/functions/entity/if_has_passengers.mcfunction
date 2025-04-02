#> arcane_core.api:entity/if_has_passengers
#
# Checks if the entity has passengers.
#
# @api
# @context entity that can have passengers

execute on passengers run return 1
return fail
