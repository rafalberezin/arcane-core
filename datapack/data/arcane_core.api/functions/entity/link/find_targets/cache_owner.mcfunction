#> arcane_core.api:entity/link/find_targets/cache_owner
#
# Cache owner id of this entity.
# Returns whether this current entity has owner id.
#
# @api
# @context owner of other entities

execute unless score @s arcane_core.internal.link.id = @s arcane_core.internal.link.id run return 0

scoreboard players operation #arcane_core.internal:link.find arcane_core.internal.link.owner_id = @s arcane_core.internal.link.id
return 1
