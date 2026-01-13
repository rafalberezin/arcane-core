#> arcane_core.internal:module/item/update/mainhand
#
# @internal

function arcane_core.internal:util/macro/modify_item/mainhand with storage arcane_core.internal:module.item /.mainhand.update
item modify entity @s weapon.mainhand arcane_core.internal:module/item/update/set_session_id

data modify storage arcane_core.internal:module.item /.mainhand set from entity @s SelectedItem.components.minecraft:custom_data."arcane_core.api"
