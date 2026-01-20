#> arcane_core.internal:data/scoreboard/load
#
# @internal

scoreboard objectives add arcane_core.api.state dummy
scoreboard objectives add arcane_core.api.math dummy
scoreboard objectives add arcane_core.api.config dummy
scoreboard objectives add arcane_core.menu trigger

scoreboard objectives add arcane_core.internal.sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add arcane_core.internal.link.link_id dummy
scoreboard objectives add arcane_core.internal.link.linked_to dummy

scoreboard objectives add arcane_core.internal.event.join minecraft.custom:minecraft.leave_game
scoreboard objectives add arcane_core.internal.event.death minecraft.custom:minecraft.time_since_death

function arcane_core.internal:data/scoreboard/const
