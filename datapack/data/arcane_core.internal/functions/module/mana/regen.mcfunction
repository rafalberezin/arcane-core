#> arcane_core.internal:module/mana/regen
#
# @internal

scoreboard players operation @s arcane_core.internal.module.mana.regen_accumulator += @s arcane_core.api.module.mana.regen
execute unless score @s arcane_core.internal.module.mana.regen_accumulator matches 20.. run return 0

scoreboard players operation #arcane_core.internal:temp arcane_core.math = @s arcane_core.internal.module.mana.regen_accumulator
scoreboard players operation #arcane_core.internal:temp arcane_core.math /= #arcane_core.api:const.20 arcane_core.math

scoreboard players operation @s arcane_core.api.module.mana.current += #arcane_core.internal:temp arcane_core.math
scoreboard players operation @s arcane_core.internal.module.mana.regen_accumulator %= #arcane_core.api:const.20 arcane_core.math

function arcane_core.api:module/mana/validate
