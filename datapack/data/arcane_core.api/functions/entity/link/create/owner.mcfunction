#> arcane_core.api:entity/link/create/owner
#
# Calculate owner id for the given entity.
#
# @api
# @context entity owning the other entities

execute unless score @s arcane_core.internal.link.id = @s arcane_core.internal.link.id store result score @s arcane_core.internal.link.id run data get entity @s UUID[0]
scoreboard players operation #arcane_core.internal:link.create arcane_core.internal.link.owner_id = @s arcane_core.internal.link.id
