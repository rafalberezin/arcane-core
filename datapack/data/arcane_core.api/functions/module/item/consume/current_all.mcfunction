#> arcane_core.api:module/item/consume/current_all
#
# Remove the item stack in the currently processed hand in `#arcane_core.api:module/item/tick`.
#
# @api
# @context #arcane_core.api:module/item/tick

execute if score #arcane_core.internal:module.item.mainhand arcane_core.state matches 1 run return run item modify entity @s weapon.mainhand arcane_core.internal:count/zero
return run item modify entity @s weapon.offhand arcane_core.internal:count/zero
