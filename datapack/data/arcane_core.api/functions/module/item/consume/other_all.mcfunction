#> arcane_core.api:module/item/consume/other_all
#
# Remove the item stack in the other hand
# that's not currently processed in `#arcane_core.api:module/item/tick`.
#
# @api
# @context #arcane_core.api:module/item/tick

execute if score #arcane_core.internal:module.item.mainhand arcane_core.state matches 1 if items entity @s weapon.offhand * run return run item modify entity @s weapon.offhand arcane_core.internal:count/zero
return run item modify entity @s weapon.mainhand arcane_core.internal:count/zero
