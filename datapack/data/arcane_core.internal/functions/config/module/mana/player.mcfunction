#> arcane_core.internal:config/init/module/mana/player
#
# @internal
#
# @handles #arcane_core.internal:config/player

execute unless score #arcane_core.internal:module.mana.enabled arcane_core.state matches 1 run return run tag @s remove arcane_core.internal.module.actionbar.display.mana

# max mana
execute unless score @s arcane_core.api.module.mana.max matches -2147483648..2147483647 run scoreboard players operation @s arcane_core.api.module.mana.max = #arcane_core.internal:config.global.module.mana.max_mana.default arcane_core.config
scoreboard players operation @s arcane_core.api.module.mana.max < #arcane_core.internal:config.global.module.mana.max_mana.max arcane_core.config
scoreboard players operation @s arcane_core.api.module.mana.max > #arcane_core.internal:config.global.module.mana.max_mana.min arcane_core.config

# mana
scoreboard players operation @s arcane_core.api.module.mana.current > #arcane_core.api:const.0 arcane_core.math
scoreboard players operation @s arcane_core.api.module.mana.current < @s arcane_core.api.module.mana.max

# mana regen
execute unless score @s arcane_core.api.module.mana.regen matches -2147483648..2147483647 run scoreboard players operation @s arcane_core.api.module.mana.regen = #arcane_core.internal:config.global.module.mana.mana_regen arcane_core.config
scoreboard players operation @s arcane_core.api.module.mana.regen > #arcane_core.api:const.0 arcane_core.math
