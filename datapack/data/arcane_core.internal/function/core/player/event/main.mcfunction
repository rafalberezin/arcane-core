#> arcane_core.internal:core/player/event/main
#
# @internal
#
# @handles #arcane_core.internal:core/player/tick

# Score increases when player leave the game.
# Manually setting the score to 1 after processing achieves:
# 	- if score is not set: joined for the first time
# 	- if score is 1: playing continuously
# 	- if score is 2: left and joined back
execute unless score @s arcane_core.internal.event.join matches 1 run function arcane_core.internal:core/player/event/join

# Score changes to 0 when player dies
# and increases by 1 every tick after they respawn.
# 	-if score is 0: the player is dead
# 	-if score is 1: the player just respawned
# Tag the player to ensure death event only runs once per death
# and the respawn event only triggers after death
# as on first join the score goes from unset to 1.
execute if score @s[tag=!arcane_core.internal.event.death.processed] arcane_core.internal.event.death matches 0 \
	run function arcane_core.internal:core/player/event/death/main

execute if score @s[tag=arcane_core.internal.event.death.processed] arcane_core.internal.event.death matches 1 \
	run function arcane_core.internal:core/player/event/respawn
