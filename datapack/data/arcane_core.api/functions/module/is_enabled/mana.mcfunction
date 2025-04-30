#> arcane_core.api:module/is_enabled/mana
#
# Returns whether the built-in mana module is enabled.
#
# @api

return run execute if score #arcane_core.internal:module.mana.enabled arcane_core.state matches 1
