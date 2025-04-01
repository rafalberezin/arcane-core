#> arcane_core.api:module/item/is_used
#
# Call to check if an item was used this tick.
# Supported items:
# - minecraft:carrot_on_a_stick
# - minecraft:warped_fungus_on_a_stick
#
# @api

execute if score @s arcane_core.internal.module.item.used.carrot_on_a_stick matches 1.. run return 1
execute if score @s arcane_core.internal.module.item.used.warped_fungus_on_a_stick matches 1.. run return 1

return 0
