#> arcane_core.api:module/item/is_offhand
#
# Check if `#arcane_core.api:module/item/tick` is currently executed for the off hand item.
#
# @api
# @context #arcane_core.api:module/item/tick

return run execute if score #arcane_core.internal:module.item.mainhand arcane_core.state matches 0
