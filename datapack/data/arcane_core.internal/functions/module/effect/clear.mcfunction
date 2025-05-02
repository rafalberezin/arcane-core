#> arcane_core.internal:module/effect/clear
#
# @internal

function #arcane_core.api:module/effect/clear

tag @s remove arcane_core.internal.effect.clear
tag @s remove arcane_core.internal.effect.clear.positive
tag @s remove arcane_core.internal.effect.clear.negative
tag @s remove arcane_core.internal.effect.clear.utility
tag @s remove arcane_core.internal.effect.clear.persistent
tag @s remove arcane_core.internal.effect.clear.forced

function #arcane_core.api:module/effect/clear_type/reset

tag @s add arcane_core.internal.effect.ended
