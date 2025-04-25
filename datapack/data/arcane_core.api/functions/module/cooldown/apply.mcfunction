#> arcane_core.api:module/cooldown/apply
#
# Apply a cooldown to a player.
#
# @api
# @context player

execute if entity @s[type=minecraft:player] run tag @s add arcane_core.internal.module.cooldown
