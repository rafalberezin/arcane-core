#> arcane_core.api:module/animation/root/dismount_entity
#
# Dismount this entity from it's vehicle and unbind it's passenger structure
# from auto remounting the animation root
#
# @api

function arcane_core.internal:module/animation/root/auto_remount/unlink_recursive
ride @s dismount
