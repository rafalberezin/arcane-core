#> arcane_core.internal:module/item/offhand
#
# @internal

data modify storage arcane_core.api:module.item hand set value {}

scoreboard players set #arcane_core.internal:module.item.mainhand arcane_core.state 0

data modify storage arcane_core.api:module.item hand.current set from storage arcane_core.internal:module.item /.offhand.data
data modify storage arcane_core.api:module.item hand.other set from storage arcane_core.internal:module.item /.mainhand.data

function arcane_core.internal:util/macro/call/direct with storage arcane_core.internal:module.item /.offhand.tick
