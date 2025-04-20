#> arcane_core.internal:module/item/update/prepare_item_data
#
# @internal

function arcane_core.internal:module/item/update/determine_slot_name

execute store success score #arcane_core.internal:temp arcane_core.state run function arcane_core.internal:module/item/update/modify_item with storage arcane_core.internal:temp root.item.update.macro
execute if score #arcane_core.internal:temp arcane_core.state matches 1 run scoreboard players add #arcane_core.internal:temp arcane_core.math 1
