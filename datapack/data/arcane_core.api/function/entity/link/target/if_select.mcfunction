#> arcane_core.api:entity/link/target/if_select
#
# Select the executing as link target for search.
# Returns whether the executing entity is a link target.
#
# TIP: you can use `target/if_filter` to search for
# the targets with the same 
#
# TIP: you can use `target/if_filter` to search for
# entities with the same owner as the executing entity
# (including executing entity).
#
# @api
# @context entity being owned by another entity

execute unless score @s arcane_core.internal.link.linked_to matches 1.. run return fail

scoreboard players operation #arcane_core.internal:link.find arcane_core.api.state = @s arcane_core.internal.link.linked_to
return 1
