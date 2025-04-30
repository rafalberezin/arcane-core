#> arcane_core.internal:content/animation/frame/mana/mana_crystal/create/setup_root
#
# @internal

function arcane_core.api:module/animation/root/mount_entity
tag @s remove arcane_core.internal.temp.summon

# used for shard delay
scoreboard players set #arcane_core.internal:temp arcane_core.state 0
execute on passengers run function arcane_core.internal:content/animation/frame/mana/mana_crystal/create/setup_shard
