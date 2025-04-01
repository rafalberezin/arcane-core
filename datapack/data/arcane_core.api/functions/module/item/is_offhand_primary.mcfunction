#> arcane_core.api:module/item/is_primary
#
# Check if `#arcane_core.api:module/item/tick` is currently executed for the offhand primary item.
# (offhand item if there was no custom item in mainhand)
#
# This is a combination of `is_offhand` and `is_primary` checks.
#
# @api
# @context #arcane_core.api:module/item/tick

execute if score #arcane_core.internal:module.item.primary arcane_core.state matches 1 if score #arcane_core.internal:module.item.mainhand arcane_core.state matches 0 run return 1
return fail
