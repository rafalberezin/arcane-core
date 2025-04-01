#> arcane_core.internal:module/item/main
#
# @internal
#
# @handles #arcane_core.internal:core/player/tick

execute unless score #arcane_core.internal:module.item.enabled arcane_core.state matches 1 run return 0

scoreboard players set #arcane_core.internal:module.item.primary arcane_core.state 1

execute if items entity @s weapon.mainhand #arcane_core.internal:module/item/custom_item_base run function arcane_core.internal:module/item/mainhand
execute if items entity @s weapon.offhand #arcane_core.internal:module/item/custom_item_base run function arcane_core.internal:module/item/offhand
