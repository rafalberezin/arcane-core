#> arcane_core.api:entity/link/owner/if_select
#
# Select the executing as link owner for search.
# Returns whether the executing entity is a link owner.
#
# @api
# @context owner of other entities

execute unless score @s arcane_core.internal.link.link_id matches 1.. run return fail

scoreboard players operation #arcane_core.internal:link.find arcane_core.api.state = @s arcane_core.internal.link.link_id
return 1
