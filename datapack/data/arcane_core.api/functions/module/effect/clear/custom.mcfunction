#> arcane_core.api:module/effect/clear/custom
#
# Call to trigger custom effect clear on the entity
# without any of the built-in types marked for clear.
#
# Use this to create your own custom clear type by defining your own clear function
# that calls this and a corresponding check for people to use.
#
# Make sure to register functions that add and remove your internal mark
# using `#arcane_core.api:module/effect/clear_type/apply`
# and `#arcane_core.api:module/effect/clear_type/reset`.
# This is important for force clearing to work properly.
#
# @api

tag @s add arcane_core.internal.effect.clear
