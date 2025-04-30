#> arcane_core.api:module/enable/mana
#
# Enable the built-in mana module.
#
# @api

scoreboard players set #arcane_core.internal:module.mana.enabled arcane_core.state 1

execute if score #arcane_core.internal:config.global.module.mana.mana_crystal.enabled arcane_core.config matches 0 run return 0
function arcane_core.api:module/enable/item

execute if score #arcane_core.internal:config.global.module.mana.mana_crystal.animation arcane_core.config matches 0 run return 0
function arcane_core.api:module/enable/cooldown
function arcane_core.api:module/enable/animation
