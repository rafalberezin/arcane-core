#> arcane_core.api:module/is_enabled/animation
#
# Returns whether the built-in animation module is enabled.
#
# @api

return run execute if score #arcane_core.internal:module.animation.enabled arcane_core.state matches 1
