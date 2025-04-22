#> arcane_core.internal:module/item/update/iterate_inventory
#
# @internal

data modify storage arcane_core.internal:temp root.macro set value {slot2: ""}
data modify storage arcane_core.internal:temp root.macro.modifier set from storage arcane_core.internal:temp root.iterate[-1].components.minecraft:custom_data."arcane_core.api:meta".update

execute if data storage arcane_core.internal:temp root.macro.modifier run function arcane_core.internal:module/item/update/prepare_item_data

data remove storage arcane_core.internal:temp root.iterate[-1]
execute if data storage arcane_core.internal:temp root.iterate[0] run function arcane_core.internal:module/item/update/iterate_inventory
