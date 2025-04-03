#> arcane_core.api:entity/link/owner/select
#
# Select this owner for search.
# Returns whether this current entity has owner id.
#
# @api
# @context owner of other entities

execute unless score @s arcane_core.internal.link.self_id = @s arcane_core.internal.link.self_id run return fail

scoreboard players operation #arcane_core.internal:link.find arcane_core.internal.link.owner_id = @s arcane_core.internal.link.self_id
return 1
