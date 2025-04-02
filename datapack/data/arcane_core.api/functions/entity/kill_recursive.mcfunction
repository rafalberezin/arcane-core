#> arcane_core.api:entity/kill
#
# Kill the executing entity and all of it's passengers
# at the end of it's tick code execution.
#
# @api
# @context entity

tag @s add arcane_core.internal.entity.kill
tag @s add arcane_core.internal.entity.kill.recursive
