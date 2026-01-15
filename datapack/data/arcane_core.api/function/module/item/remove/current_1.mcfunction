#> arcane_core.api:module/item/remove/current_1
#
# Remove 1 item from the stack in the hand
# currently processed by the custom item tick handler.
#
# @api
#
# @context function specified in item's custom_data component `"arcane_core.api".tick.function` path.

execute if score #arcane_core.internal:module.item.mainhand arcane_core.api.state matches 1 \
	run return run item modify entity @s weapon.mainhand arcane_core.api:count/remove_1
item modify entity @s weapon.offhand arcane_core.api:count/remove_1
