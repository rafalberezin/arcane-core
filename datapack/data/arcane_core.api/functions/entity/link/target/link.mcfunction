#> arcane_core.api:entity/link/target/link
#
# Link this entity to the last owner created.
#
# @api
# @context entity being owned by another entity

scoreboard players operation @s arcane_core.internal.link.linked_to = #arcane_core.internal:link.create arcane_core.internal.link.linked_to
