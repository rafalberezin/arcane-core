#> arcane_core.api:entity/link/target/if_filter
#
# Filter entities for those being owned by the selected owner.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/owner/if_select \
# 	as @e if function arcane_core.api:entity/link/target/if_filter ...
# ```
#
# You should narrow down the selector to the entities that could be the targets,
# such as using `@e[tag=my_project.specific_tag]` if you know you are looking
# for entities with a specific tag, or other characteristics.
#
# Alternatively you can include the filtering directly
# in the selector by using a predicate of the same name as this function.
#
# Example:
# ```
# execute if function arcane_core.api:entity/link/owner/if_select \
# 	as @e[predicate=arcane_core.api:entity/link/target/if_filter] ...
# ```
#
# @api
# @context possible target entity

return run execute if score @s arcane_core.internal.link.linked_to = #arcane_core.internal:link.find arcane_core.api.state
