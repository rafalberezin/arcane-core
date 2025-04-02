#> arcane_core.api:entity/link/target/select
#
# Select this target to search for it's owner.
# Returns whether this entity is owned by another entity.
#
# TIP: you can use `target/filter` to search for
# this entity's siblings (including itself)
#
# @api
# @context entity being owned by another entity

execute unless score @s arcane_core.internal.link.owner_id = @s arcane_core.internal.link.owner_id run return 0

scoreboard players operation #arcane_core.internal:link.find arcane_core.internal.link.owner_id = @s arcane_core.internal.link.owner_id
return 1
