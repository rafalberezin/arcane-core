#> arcane_core.api:module/item/is_secondary
#
# Check if `#arcane_core.api:module/item/tick` is currently executed for the secondary item.
# (offhand item if there was a custom item in mainhand)
#
# @api
# @context #arcane_core.api:module/item/tick

return run execute if score #arcane_core.internal:module.item.primary arcane_core.state matches 0
