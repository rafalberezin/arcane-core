#> arcane_core.api:module/is_enabled/item
#
# Returns whether the built-in item module is enabled.
#
# @api

return run execute if score #arcane_core.internal:module.item.enabled arcane_core.state matches 1
