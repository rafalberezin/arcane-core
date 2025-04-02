#> arcane_core.internal:module/animation/root/tick
#
# @internal

execute unless function arcane_core.api:entity/if_has_passengers run return run function arcane_core.api:entity/kill

execute store success score #arcane_core.internal:temp arcane_core.state if function arcane_core.api:entity/link/find_owner/cache_owner at @p[predicate=arcane_core.api:entity/link/filter_owner] run tp @s ~ ~ ~
execute unless score #arcane_core.internal:temp arcane_core.state matches 1.. run return run function arcane_core.api:entity/kill_recursive

execute if function arcane_core.api:entity/if_has_passengers run return 0

# at this point the root has teleported across dimensions
# which caused it's passengers to be dismounted
# TODO rebuild the passenger tree
