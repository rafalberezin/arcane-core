#> arcane_core.api:module/item/if_offhand_primary
#
# Check if the custom item tick handler is currently
# being executed for the off hand primary item.
#
# This is a combination of `if_offhand` and `if_primary` checks.
#
# @api
#
# @context function specified in item's custom_data component `"arcane_core.api".tick.function` path.

execute unless score #arcane_core.internal:module.item.mainhand arcane_core.api.state matches 1 \
	if score #arcane_core.internal:module.item.primary arcane_core.api.state matches 1 \
	run return 1

return 0
