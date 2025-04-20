#> arcane_core.internal:module/item/update/determine_slot_name
#
# @internal

execute store result score #arcane_core.internal:temp arcane_core.state run data get storage arcane_core.internal:temp root.item.update.inv[-1].Slot

execute if score #arcane_core.internal:temp arcane_core.state matches -106 run return run data modify storage arcane_core.internal:temp root.item.update.macro.slot set value "weapon.offhand"
execute if score #arcane_core.internal:temp arcane_core.state matches 103 run return run data modify storage arcane_core.internal:temp root.item.update.macro.slot set value "armor.head"
execute if score #arcane_core.internal:temp arcane_core.state matches 102 run return run data modify storage arcane_core.internal:temp root.item.update.macro.slot set value "armor.chest"
execute if score #arcane_core.internal:temp arcane_core.state matches 101 run return run data modify storage arcane_core.internal:temp root.item.update.macro.slot set value "armor.legs"
execute if score #arcane_core.internal:temp arcane_core.state matches 100 run return run data modify storage arcane_core.internal:temp root.item.update.macro.slot set value "armor.feet"

data modify storage arcane_core.internal:temp root.item.update.macro.slot set value "container."
data modify storage arcane_core.internal:temp root.item.update.macro.slot2 set from storage arcane_core.internal:temp root.item.update.inv[-1].Slot
