#> arcane_core.internal:util/scoreboard/load/main
#
# @internal

scoreboard objectives add arcane_core.state dummy
scoreboard objectives add arcane_core.math dummy
scoreboard objectives add arcane_core.config trigger
scoreboard objectives add arcane_core.internal.sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add arcane_core.internal.link.self_id dummy
scoreboard objectives add arcane_core.internal.link.owner_id dummy

function arcane_core.internal:util/scoreboard/load/const
