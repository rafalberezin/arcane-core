#> arcane_core.api:module/item/if_used/carrot_on_a_stick
#
# Check if the carrot_on_a_stick was used since last tick.
#
# @api
#
# @context function specified in item's custom_data component `"arcane_core.api".tick.function` path.

return run execute if score @s arcane_core.internal.module.item.used.carrot_on_a_stick matches 1..
