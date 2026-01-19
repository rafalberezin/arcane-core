#> arcane_core.api:entity/link/owner/create
#
# Make this entity a link owner.
#
# @api
# @context owner of other entities.

execute unless score @s arcane_core.internal.link.link_id matches 1.. \
	store result score @s arcane_core.internal.link.link_id \
	run random value 1..2147483647

scoreboard players operation #arcane_core.internal:link.create arcane_core.api.state = @s arcane_core.internal.link.link_id
