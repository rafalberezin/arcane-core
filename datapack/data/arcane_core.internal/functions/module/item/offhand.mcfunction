#> arcane_core.internal:module/item/offhand
#
# @internal

data remove storage arcane_core.api:module.item current
data modify storage arcane_core.api:module.item current set from entity @s Inventory[{Slot: -106b}].components.minecraft:custom_data.arcane_core
execute unless data storage arcane_core.api:module.item current run return 0

scoreboard players set #arcane_core.internal:module.item.mainhand arcane_core.state 0
function #arcane_core.internal:module/item/tick
