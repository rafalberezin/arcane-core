#> arcane_core.internal:content/animation/frame/mana/mana_crystal/create/main
#
# @internal

function arcane_core.api:module/animation/root/select_player

summon minecraft:item_display ~ ~ ~ { \
	 Tags:["arcane_core.internal.temp.summon"] \
	,Passengers: [ \
		 {id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
		,{id: "minecraft:item_display"} \
	] \
}

execute as @e[type=minecraft:item_display,tag=arcane_core.internal.temp.summon,limit=1] run function arcane_core.internal:content/animation/frame/mana/mana_crystal/create/setup_root
