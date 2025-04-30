#> arcane_core.internal:content/item/main
#
# @internal
#
# @handles #arcane_core.internal:module/item/tick

execute unless data storage arcane_core.api:module.item current.arcane_core run return 0
execute if score #arcane_core.internal:module.item.primary arcane_core.state matches 0 run return 0

execute if data storage arcane_core.api:module.item current.arcane_core.mana.mana_crystal run function arcane_core.internal:content/item/mana/mana_crystal/main
