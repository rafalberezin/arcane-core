#> arcane_core.api:module/actionbar/if_can_use
#
# Returns whether you can use the actionbar display.
#
# @api
#
# @context player

return run execute unless entity @s[tag=arcane_core.internal.module.actionbar.in_use]
