execute as @a if items entity @s weapon.offhand minecraft:lantern at @s unless block ~ ~1 ~ light run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace light
execute as @a if items entity @s weapon.offhand minecraft:lantern at @s if block ~ ~1 ~ air run setblock ~ ~1 ~ light[level=9]
execute at @a if block ~ ~1 ~ light unless items entity @p weapon.offhand minecraft:lantern run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace light

execute as @e[type=snowball] run data modify entity @s Owner set from entity @n[type=warden,dy=-3] UUID

execute as @e[type=chicken] at @s positioned ~-8 ~-1 ~-8 as @e[type=warden,dx=16,dz=16,dy=2] run data remove entity @s anger.suspects[1]
execute as @e[type=chicken] at @s positioned ~-8 ~-1 ~-8 at @e[type=warden,dx=16,dz=16,dy=2] run data modify entity @n anger.suspects[0].uuid set from entity @s UUID

execute as @a[scores={mine.game.crafted.wool=1..}] run clear @s white_wool[!can_place_on] 4
execute as @a[scores={mine.game.crafted.wool=1..}] run give @s white_wool[can_place_on=[{blocks:["minecraft:cyan_terracotta","minecraft:infested_stone","minecraft:diamond_ore","minecraft:oak_planks","minecraft:white_wool"]}]] 4
scoreboard players remove @a[scores={mine.game.crafted.wool=1..}] mine.points.mined.diamond_ore 2
scoreboard players remove @a[scores={mine.game.crafted.wool=1..}] mine.game.crafted.wool 4

scoreboard players remove @a[scores={mine.game.crafted.snowball=1..}] mine.points.mined.diamond_ore 2
scoreboard players remove @a[scores={mine.game.crafted.snowball=1..}] mine.game.crafted.snowball 1

execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=warden,distance=..20] mine.game.y = @s mine.game.y run setblock ~ 199 ~ barrel{Items:[{Slot:0b,id:"minecraft:compass",count:1,components:{"minecraft:custom_name":{text:"Warden Compass",italic:0b,color:"cyan"},"minecraft:lore":[{text:"hold in offhand",italic:0b,color:"blue"}],"minecraft:lodestone_tracker":{target:{dimension:"mine:warden",pos:[I;0,0,0]},tracked:true}}}]}
execute as @a if items entity @s weapon.offhand compass at @s as @n[type=warden,distance=..20] if score @p mine.game.y = @s mine.game.y run data modify block ~ 199 ~ Items[0].components."minecraft:lodestone_tracker".target.pos set from entity @s Pos
execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=warden,distance=..20] mine.game.y = @s mine.game.y run item replace entity @s weapon.offhand from block ~ 199 ~ container.0
execute as @a if items entity @s weapon.offhand compass at @s if score @n[type=warden,distance=..20] mine.game.y = @s mine.game.y run setblock ~ 199 ~ air


execute unless entity @a[gamemode=adventure] run function mine:general_end


execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/warden/archer
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/warden/builder
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/warden/fighter
execute if score mine.handler mine.timer matches 20 run function mine:mobs/game/warden/tracker

execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 40 run title @a title "Warden"

execute if score mine.handler mine.timer matches 400 run function mine:game/openwalls

execute if score mine.handler mine.timer matches 450 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/warden/warden
execute if score mine.handler mine.timer matches 650 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/warden/warden
execute if score mine.handler mine.timer matches 850 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/warden/warden
execute if score mine.handler mine.timer matches 1050 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/warden/warden
execute if score mine.handler mine.timer matches 1250 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/warden/warden
execute if score mine.handler mine.timer matches 1450 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/warden/warden
execute if score mine.handler mine.timer matches 1650 as @a[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function mine:mobs/game/warden/warden


