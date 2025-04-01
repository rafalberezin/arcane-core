#> arcane_core.api:entity/link/find_targets/filter_targets
#
# Filter entities being owned by last cached owner id.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/find_targets/cache_targets \
# 	as @e if function arcane_core.api:entity/link/find_targets/filter_targets ...
# ```
#
# You should narrow down the selector to the entities that could be the targets.
# (use `@a` if you're looking for players)
#
# Alternatively you can include the filtering into the
# selector itself using a predicate of the same name.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/find_owner/cache_owner \
# 	as @e[predicate=arcane_core.api:entity/link/find_owner/filter_targets] ...
# ```
#
# @api
# @context possible target entity

return run execute if score @s arcane_core.internal.link.owner_id = #arcane_core.internal:link.find arcane_core.internal.link.owner_id
