#> arcane_core.internal:module/mana/on_respawn
#
# @internal
#
# @handles #arcane_core.internal:core/player/event/respawn

execute unless score #arcane_core.internal:config.global.module.mana.max_mana.loose_on_death arcane_core.config matches 1 run return 0

scoreboard players operation @s arcane_core.api.module.mana.max -= #arcane_core.internal:config.global.module.mana.max_mana.loss arcane_core.config
scoreboard players operation @s arcane_core.api.module.mana.max > #arcane_core.internal:config.global.module.mana.max_mana.min arcane_core.config
scoreboard players set @s arcane_core.api.module.mana.current 0
