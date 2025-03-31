#> arcane_core.api:entity/link/create/target
#
# Link the entity to the last owner created.
#
# @api
# @context entity being owned by another entity

scoreboard players operation @s arcane_core.internal.link.owner_id = #arcane_core.internal:link.create arcane_core.internal.link.owner_id
