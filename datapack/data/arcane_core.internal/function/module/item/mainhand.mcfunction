#> arcane_core.internal:module/item/mainhand
#
# @internal

data modify storage arcane_core.api:module.item hand set value {}

scoreboard players set #arcane_core.internal:module.item.mainhand arcane_core.api.state 1

data modify storage arcane_core.api:module.item hand.current set from storage arcane_core.internal:module.item /.mainhand.data
data modify storage arcane_core.api:module.item hand.other set from storage arcane_core.internal:module.item /.offhand.data

function arcane_core.internal:util/macro/call/direct with storage arcane_core.internal:module.item /.mainhand.tick

scoreboard players set #arcane_core.internal:module.item.primary arcane_core.api.state 0
