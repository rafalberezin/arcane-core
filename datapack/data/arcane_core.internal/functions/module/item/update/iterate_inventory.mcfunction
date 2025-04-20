#> arcane_core.internal:module/item/update/iterate_inventory
#
# @internal

data modify storage arcane_core.internal:temp root.item.update.macro set value {slot2: ""}
data modify storage arcane_core.internal:temp root.item.update.macro.modifier set from storage arcane_core.internal:temp root.item.update.inv[-1].components.minecraft:custom_data."arcane_core.api:meta".update

execute if data storage arcane_core.internal:temp root.item.update.macro.modifier run function arcane_core.internal:module/item/update/prepare_item_data

data remove storage arcane_core.internal:temp root.item.update.inv[-1]
execute if data storage arcane_core.internal:temp root.item.update.inv[0] run function arcane_core.internal:module/item/update/iterate_inventory
