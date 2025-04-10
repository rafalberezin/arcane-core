#> arcane_core.api:entity/link/target/unlink
#
# Remove the link to this entity's owner.
#
# @api
# @context entity being owned by another entity

scoreboard players reset @s arcane_core.internal.link.linked_to
