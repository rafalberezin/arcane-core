#> arcane_core.internal:module/effect/ended
#
# @internal

tag @s remove arcane_core.internal.effect.ended

function #arcane_core.api:module/effect/has_effect

execute if entity @s[tag=arcane_core.internal.effect.has_effect] run return run tag @s remove arcane_core.internal.effect.has_effect
tag @s remove arcane_core.internal.effect

