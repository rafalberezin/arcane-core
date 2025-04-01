#> arcane_core.api:module/is_enabled/cooldown
#
# Returns whether the built-in cooldown module is enabled.
#
# @api

return run execute if score #arcane_core.internal:module.cooldown.enabled arcane_core.state matches 1
