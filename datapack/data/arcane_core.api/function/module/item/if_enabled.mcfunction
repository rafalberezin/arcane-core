#> arcane_core.api:module/item/if_enabled
#
# Check if the built-in item module is enabled.
#
# @api
#
# @returns Whether the item module is enabled.

return run execute if score #arcane_core.internal:module.item.enabled arcane_core.state matches 1
