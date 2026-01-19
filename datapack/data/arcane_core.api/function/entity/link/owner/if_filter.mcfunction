#> arcane_core.api:entity/link/owner/filter
#
# Filter entities for owner of the selected target.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/target/if_select \
# 	as @e if function arcane_core.api:entity/link/owner/if_filter ...
# ```
#
# You should narrow down the selector to entities that could be the owner,
# such as using `@a` if you know the owner is a player,
# or using selector tag filters.
#
# Alternatively you can include the filtering directly
# in the selector by using a predicate of the same name as this function.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/owner/if_filter \
# 	as @e[predicate=arcane_core.api:entity/link/owner/if_filter] ...
# ```
#
# TIP: you can use `target/if_filter` instead to search for
# entities with the same owner as the selected target (including the target).
#
# @api
# @context possible owner entity

return run execute if score @s arcane_core.internal.link.link_id = #arcane_core.internal:link.find arcane_core.api.state
