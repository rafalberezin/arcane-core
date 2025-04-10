#> arcane_core.api:entity/link/owner/filter
#
# Filter owner of the selected target.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/target/select \
# 	as @e if function arcane_core.api:entity/link/owner/filter ...
# ```
#
# You should narrow down the selector to entites that could be the owner.
# (for example: use `@a` if you know the owner is a player)
#
# Alternatively you can include the filtering directly
# in the selector by using a predicate of the same name.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/target/select \
# 	as @e[predicate=arcane_core.api:entity/link/owner/filter] ...
# ```
#
# TIP: you can use `target/filter` instead to search for
# the selected target's siblings (including itself)
#
# @api
# @context possible owner entity

return run execute if score @s arcane_core.internal.link.link_id = #arcane_core.internal:link.find arcane_core.internal.link.linked_to
