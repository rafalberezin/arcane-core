#> arcane_core.api:module/item/if_primary
#
# Check if the custom item tick handler is currently
# being executed for the primary item.
#
# The primary item is either the main hand item
# or off hand item if there was no custom item in the main hand.
#
# @api
#
# @context function specified in item's custom_data component `"arcane_core.api".tick.function` path.

return run execute if score #arcane_core.internal:module.item.primary arcane_core.api.state matches 1
