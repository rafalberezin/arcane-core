#> arcane_core.api:module/actionbar/change_display
#
# Returns whether you can use the actionbar display
# and automatically mark it as being used.
#
# Combines `if_can_use` and `use` into a single command.
#
# @api
#
# @context player

return run tag @s add arcane_core.internal.module.actionbar.in_use
