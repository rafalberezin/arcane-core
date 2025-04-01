#> arcane_core.api:module/item/consume/current_1
#
# Remove 1 item from the stack in the currently processed hand in `#arcane_core.api:module/item/tick`.
#
# @api
# @context #arcane_core.api:module/item/tick

execute if score #arcane_core.internal:module.item.mainhand arcane_core.state matches 1 run return run item modify entity @s weapon.mainhand arcane_core.internal:count/decrease
return run item modify entity @s weapon.offhand arcane_core.internal:count/decrease
