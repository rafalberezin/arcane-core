#> arcane_core.api:entity/link/owner/select
#
# Select this owner for search.
# Returns whether this current entity has owner id.
#
# @api
# @context owner of other entities

execute unless score @s arcane_core.internal.link.link_id matches 0.. run return fail

scoreboard players operation #arcane_core.internal:link.find arcane_core.internal.link.linked_to = @s arcane_core.internal.link.link_id
return 1
