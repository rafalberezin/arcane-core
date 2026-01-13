#> arcane_core.internal:module/item/update/offhand
#
# @internal

function arcane_core.internal:util/macro/modify_item/offhand with storage arcane_core.internal:module.item /.offhand.update
item modify entity @s weapon.offhand arcane_core.internal:module/item/update/set_session_id

function arcane_core.internal:module/item/compat_pull_offhand_data
