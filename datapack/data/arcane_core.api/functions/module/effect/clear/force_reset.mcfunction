#> arcane_core.api:module/effect/clear/force_reset
#
# Call to forcefully clear all custom effects on the entity.
#
# @api

tag @s add arcane_core.internal.effect.clear
tag @s add arcane_core.internal.effect.clear.positive
tag @s add arcane_core.internal.effect.clear.negative
tag @s add arcane_core.internal.effect.clear.utility
tag @s add arcane_core.internal.effect.clear.persistent
tag @s add arcane_core.internal.effect.clear.forced

function #arcane_core.api:module/effect/clear_type/apply
 