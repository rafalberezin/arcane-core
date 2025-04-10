#> arcane_core.api:entity/link/owner/create
#
# Make this entity a link owner.
#
# @api
# @context owner of other entities

execute unless score @s arcane_core.internal.link.link_id matches 0.. store result score @s arcane_core.internal.link.link_id run random value 0..2147483646
scoreboard players operation #arcane_core.internal:link.create arcane_core.internal.link.linked_to = @s arcane_core.internal.link.link_id
