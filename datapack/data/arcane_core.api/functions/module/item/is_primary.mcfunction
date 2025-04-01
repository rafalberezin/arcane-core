#> arcane_core.api:module/item/is_primary
#
# Check if `#arcane_core.api:module/item/tick` is currently executed for the primary item.
# (mainhand item, or offhand item if there was no custom item in mainhand)
#
# @api
# @context #arcane_core.api:module/item/tick

return run execute if score #arcane_core.internal:module.item.primary arcane_core.state matches 1
