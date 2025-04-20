#> arcane_core.internal:module/item/update/main
#
# @internal

data remove storage arcane_core.internal:temp root.item.update.inv
data modify storage arcane_core.internal:temp root.item.update.inv set from entity @s Inventory

scoreboard players set #arcane_core.internal:temp arcane_core.math 0

execute if data storage arcane_core.internal:temp root.item.update.inv[0] run function arcane_core.internal:module/item/update/iterate_inventory

tellraw @s [{"text": ""} \
	,{"font": "arcane_core.icon:chat", "translate": "arcane_core.icon.chat.section.success.start.new_line"}\
	,{"text": "Updated ", "color": "#69ca73"} \
	,{"score": {"name": "#arcane_core.internal:temp", "objective": "arcane_core.math"}, "color": "#edb97e"} \
	,{"text": " items\n", "color": "#69ca73"} \
]
