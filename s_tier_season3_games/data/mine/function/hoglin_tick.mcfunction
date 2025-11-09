execute as @a[scores={mine.game.crafted.torch=1..}] run clear @s torch[!can_place_on] 1
execute as @a[scores={mine.game.crafted.torch=1..}] run give @s torch[can_place_on=[{blocks:"minecraft:oak_planks"}]] 1
scoreboard players remove @a[scores={mine.game.crafted.torch=1..}] mine.points.mined.diamond_ore 1
scoreboard players remove @a[scores={mine.game.crafted.torch=1..}] mine.game.crafted.torch 1

execute as @a[scores={mine.game.crafted.cobweb=1..}] run clear @s cobweb[!can_place_on] 2
execute as @a[scores={mine.game.crafted.cobweb=1..}] run give @s cobweb[can_place_on=[{blocks:["minecraft:cyan_terracotta","minecraft:infested_stone","minecraft:diamond_ore","minecraft:oak_planks","minecraft:cobweb"]}]] 2
scoreboard players remove @a[scores={mine.game.crafted.cobweb=1..}] mine.points.mined.diamond_ore 1
scoreboard players remove @a[scores={mine.game.crafted.cobweb=1..}] mine.game.crafted.cobweb 2

execute as @a[scores={mine.game.crafted.firework=1..}] run clear @s firework_rocket[lore=[]] 1
execute as @a[scores={mine.game.crafted.firework=1..}] run give @s firework_rocket[lore=[{color:"blue",text:"hold in offhand",italic:0b}],fireworks={explosions:[{shape:"burst",colors:[6719955,15790320,12801229]}],flight_duration:1b}] 1
scoreboard players remove @a[scores={mine.game.crafted.firework=1..}] mine.points.mined.diamond_ore 3
scoreboard players remove @a[scores={mine.game.crafted.firework=1..}] mine.game.crafted.firework 1

execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=hoglin,distance=..20] mine.game.y = @s mine.game.y run setblock ~ 199 ~ barrel{Items:[{Slot:0b,id:"minecraft:compass",count:1,components:{"minecraft:custom_name":{text:"Hoglin Compass",italic:0b,color:"gold"},"minecraft:lore":[{text:"hold in offhand",italic:0b,color:"blue"}],"minecraft:lodestone_tracker":{target:{dimension:"mine:hoglin",pos:[I;0,0,0]},tracked:true}}}]}
execute as @a if items entity @s weapon.offhand compass at @s as @n[type=hoglin,distance=..20] if score @p mine.game.y = @s mine.game.y run data modify block ~ 199 ~ Items[0].components."minecraft:lodestone_tracker".target.pos set from entity @s Pos
execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=hoglin,distance=..20] mine.game.y = @s mine.game.y run item replace entity @s weapon.offhand from block ~ 199 ~ container.0
execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=hoglin,distance=..20] mine.game.y = @s mine.game.y run setblock ~ 199 ~ air


execute unless entity @a[gamemode=adventure] run function mine:general_end



execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/hoglin/archer
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/hoglin/builder
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/hoglin/fighter
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/hoglin/tracker

execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 40 run title @a title "Hoglin"

execute if score mine.handler mine.timer matches 400 run function mine:game/openwalls

execute if score mine.handler mine.timer matches 450 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/hoglin/hoglin
execute if score mine.handler mine.timer matches 650 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/hoglin/hoglin
execute if score mine.handler mine.timer matches 850 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/hoglin/hoglin
execute if score mine.handler mine.timer matches 1050 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/hoglin/hoglin
execute if score mine.handler mine.timer matches 1250 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/hoglin/hoglin
execute if score mine.handler mine.timer matches 1450 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/hoglin/hoglin
execute if score mine.handler mine.timer matches 1650 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/hoglin/hoglin

