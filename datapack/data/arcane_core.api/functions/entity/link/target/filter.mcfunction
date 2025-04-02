#> arcane_core.api:entity/link/target/filter
#
# Filter entities being owned by the selected owner.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/owner/select \
# 	as @e if function arcane_core.api:entity/link/target/filter ...
# ```
#
# You should narrow down the selector to the entities that could be the targets.
# (for example: use `@a` if you're looking for players)
#
# Alternatively you can include the filtering directly
# in the selector by using a predicate of the same name.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/owner/select \
# 	as @e[predicate=arcane_core.api:entity/link/target/filter] ...
# ```
#
# @api
# @context possible target entity

return run execute if score @s arcane_core.internal.link.owner_id = #arcane_core.internal:link.find arcane_core.internal.link.owner_id
