#> arcane_core.internal:config/init/module/mana/global
#
# @internal

# max mana
scoreboard players set #arcane_core.internal:config.global.default.module.mana.max_mana.default arcane_core.config 200
scoreboard players set #arcane_core.internal:config.global.default.module.mana.max_mana.max arcane_core.config 400
scoreboard players set #arcane_core.internal:config.global.default.module.mana.max_mana.min arcane_core.config 100
scoreboard players set #arcane_core.internal:config.global.default.module.mana.max_mana.gain arcane_core.config 50
scoreboard players set #arcane_core.internal:config.global.default.module.mana.max_mana.loss arcane_core.config 50
scoreboard players set #arcane_core.internal:config.global.default.module.mana.max_mana.loose_on_death arcane_core.config 1

execute unless score #arcane_core.internal:config.global.module.mana.max_mana.default arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.max_mana.default arcane_core.config = #arcane_core.internal:config.global.default.module.mana.max_mana.default arcane_core.config
execute unless score #arcane_core.internal:config.global.module.mana.max_mana.max arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.max_mana.max arcane_core.config = #arcane_core.internal:config.global.default.module.mana.max_mana.max arcane_core.config
execute unless score #arcane_core.internal:config.global.module.mana.max_mana.min arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.max_mana.min arcane_core.config = #arcane_core.internal:config.global.default.module.mana.max_mana.min arcane_core.config
execute unless score #arcane_core.internal:config.global.module.mana.max_mana.gain arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.max_mana.gain arcane_core.config = #arcane_core.internal:config.global.default.module.mana.max_mana.gain arcane_core.config
execute unless score #arcane_core.internal:config.global.module.mana.max_mana.loss arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.max_mana.loss arcane_core.config = #arcane_core.internal:config.global.default.module.mana.max_mana.loss arcane_core.config
execute unless score #arcane_core.internal:config.global.module.mana.max_mana.loose_on_death arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.max_mana.loose_on_death arcane_core.config = #arcane_core.internal:config.global.default.module.mana.max_mana.loose_on_death arcane_core.config

# mana regen
scoreboard players set #arcane_core.internal:config.global.default.module.mana.mana_regen arcane_core.config 1
execute unless score #arcane_core.internal:config.global.module.mana.mana_regen arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.mana_regen arcane_core.config = #arcane_core.internal:config.global.default.module.mana.mana_regen arcane_core.config

# mana crystal
scoreboard players set #arcane_core.internal:config.global.default.module.mana.mana_crystal.enabled arcane_core.config 1
scoreboard players set #arcane_core.internal:config.global.default.module.mana.mana_crystal.animation arcane_core.config 1

execute unless score #arcane_core.internal:config.global.module.mana.mana_crystal.enabled arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.mana_crystal.enabled arcane_core.config = #arcane_core.internal:config.global.default.module.mana.mana_crystal.enabled arcane_core.config
execute unless score #arcane_core.internal:config.global.module.mana.mana_crystal.animation arcane_core.config matches -2147483648..2147483647 run scoreboard players operation #arcane_core.internal:config.global.module.mana.mana_crystal.animation arcane_core.config = #arcane_core.internal:config.global.default.module.mana.mana_crystal.animation arcane_core.config
