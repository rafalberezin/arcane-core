#> arcane_core.api:module/is_enabled/effect
#
# Returns whether the built-in effect module is enabled.
#
# @api

return run execute if score #arcane_core.internal:module.effect.enabled arcane_core.state matches 1
