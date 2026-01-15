#> arcane_core.api:module/item/remove/other_all
#
# Remove the item stack in the other hand that's not
# currently processed by the custom item tick handler.
#
# @api
#
# @context function specified in item's custom_data component `"arcane_core.api".tick.function` path.

execute if score #arcane_core.internal:module.item.mainhand arcane_core.api.state matches 1 \
	run return run item modify entity @s weapon.offhand arcane_core.api:count/set_0
item modify entity @s weapon.mainhand arcane_core.api:count/set_0
