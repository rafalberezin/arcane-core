#> arcane_core.internal:core/second
#
# @internal
#
# @handles #arcane_core.internal:core/tick

scoreboard players add #arcane_core.internal:core.timer.second arcane_core.state 1
execute unless score #arcane_core.internal:core.timer.second arcane_core.state matches 20.. run return 0
scoreboard players set #arcane_core.internal:core.timer.second arcane_core.state 0

execute as @a at @s run function #arcane_core.api:player/second
execute as @e at @s run function #arcane_core.api:entity/second
