#> arcane_core.api:entity/if_has/passengers
#
# Check if the executing entity has any passengers.
#
# @api
# @context entity

execute on passengers run return 1
return fail
