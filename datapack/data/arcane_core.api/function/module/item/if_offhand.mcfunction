#> arcane_core.api:module/item/if_offhand
#
# Check if the custom item tick handler is currently
# being executed for the off hand item.
#
# @api
#
# @context function specified in item's custom_data component `"arcane_core.api".tick.function` path.

return run execute unless score #arcane_core.internal:module.item.mainhand arcane_core.api.state matches 1
