#> arcane_core.api:module/item/if_secondary
#
# Check if the custom item tick handler is currently
# being executed for the secondary item.
#
# The secondary item is the off hand item
# if there was a custom item in the main hand.
#
# @api
#
# @context function specified in item's custom_data component `"arcane_core.api".tick.function` path.

return run execute unless score #arcane_core.internal:module.item.primary arcane_core.state matches 1
