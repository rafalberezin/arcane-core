#> arcane_core.api:entity/link/target/link
#
# Link the executing entity to the last owner created.
#
# @api

scoreboard players operation @s arcane_core.internal.link.linked_to = #arcane_core.internal:link.create arcane_core.api.state
