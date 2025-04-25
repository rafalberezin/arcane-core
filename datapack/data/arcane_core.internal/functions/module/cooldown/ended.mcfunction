#> arcane_core.internal:module/effect/ended
#
# @internal

tag @s remove arcane_core.internal.module.cooldown.ended

function #arcane_core.internal:module/cooldown/has_cooldown

execute if entity @s[tag=arcane_core.internal.module.cooldown.has_cooldown] run return run tag @s remove arcane_core.internal.module.cooldown.has_cooldown
tag @s remove arcane_core.internal.module.cooldown
