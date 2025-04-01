#> arcane_core.internal:module/item/mainhand
#
# @internal

data remove storage arcane_core.api:module.item current
data modify storage arcane_core.api:module.item current set from entity @s SelectedItem.components.minecraft:custom_data.arcane_core
execute unless data storage arcane_core.api:module.item current run return 0

scoreboard players set #arcane_core.internal:module.item.mainhand arcane_core.state 1

function #arcane_core.internal:module/item/tick

scoreboard players set #arcane_core.internal:module.item.primary arcane_core.state 0
