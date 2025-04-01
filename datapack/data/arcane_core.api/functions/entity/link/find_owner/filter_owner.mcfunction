#> arcane_core.api:entity/link/find_owner/filter_owner
#
# Filter owner by last cached owner id.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/find_owner/cache_owner \
# 	as @e if function arcane_core.api:entity/link/find_owner/filter_owner ...
# ```
#
# You should narrow down the selector to entites that could be the owner.
# (use `@a` if you know the owner is a player)
#
# TIP: Use `find_targets/filter_targets` instead to get this entity's siblings.
#
# @api
# @context possible owner entity

return run execute if score @s arcane_core.internal.link.self_id = #arcane_core.internal:link.find arcane_core.internal.link.owner_id
