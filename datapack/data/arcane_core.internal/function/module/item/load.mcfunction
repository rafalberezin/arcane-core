#> arcane_core.internal:module/item/load
#
# @internal
#
# @handles #arcane_core.internal:module/load

execute unless score #arcane_core.internal:module.item.enabled arcane_core.api.state matches 1 run return 0

scoreboard objectives add arcane_core.internal.module.item.used.carrot_on_a_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add arcane_core.internal.module.item.used.warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
