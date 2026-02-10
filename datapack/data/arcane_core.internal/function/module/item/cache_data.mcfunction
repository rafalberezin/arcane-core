#> arcane_core.internal:module/item/cache_data
#
# @internal

data remove storage arcane_core.internal:module.item /

execute if items entity @s weapon.mainhand #arcane_core.internal:module/item/custom_item_base \
	run data modify storage arcane_core.internal:module.item /.mainhand set from entity @s SelectedItem.components.minecraft:custom_data."arcane_core.api"

execute if items entity @s weapon.offhand #arcane_core.internal:module/item/custom_item_base \
	run function arcane_core.internal:module/item/compat_pull_offhand_data

execute if data storage arcane_core.internal:module.item /.mainhand.update.item_modifier \
	if function arcane_core.internal:module/item/update/if_session_missmatch/mainhand \
	run function arcane_core.internal:module/item/update/mainhand

execute if data storage arcane_core.internal:module.item /.offhand.update.item_modifier \
	if function arcane_core.internal:module/item/update/if_session_missmatch/offhand \
	run function arcane_core.internal:module/item/update/offhand
