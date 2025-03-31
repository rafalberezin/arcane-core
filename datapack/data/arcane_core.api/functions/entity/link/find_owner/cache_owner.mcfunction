#> arcane_core.api:entity/link/find_owner/cache_owner
#
# Cache id of this entity's owner.
# Returns whether this entity is owned by another entity.
#
# @api
# @context entity being owned by another entity

execute unless score @s arcane_core.internal.link.owner_id = @s arcane_core.internal.link.owner_id run return 0

scoreboard players operation #arcane_core.internal:link.find arcane_core.internal.link.owner_id = @s arcane_core.internal.link.owner_id
return 1
