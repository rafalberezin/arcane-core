#> arcane_core.api:module/item/is_mainhand
#
# Check if `#arcane_core.api:module/item/tick` is currently executed for the main hand item.
#
# @api
# @context #arcane_core.api:module/item/tick

return run execute if score #arcane_core.internal:module.item.mainhand arcane_core.state matches 1
