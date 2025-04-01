#> arcane_core.api:module/cooldown/remove
#
# Call when all of your cooldowns have run out.
#
# @api
# @context player

execute unless function #arcane_core.internal:module/cooldown/has_cooldown run tag @s remove arcane_core.internal.module.cooldown
