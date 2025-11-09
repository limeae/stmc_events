scoreboard players remove @a[scores={mine.game.crafted.spectral_arrow=1..}] mine.game.crafted.spectral_arrow 1

execute as @a[scores={mine.game.crafted.rail=1..}] run clear @s rail[!can_place_on] 6
execute as @a[scores={mine.game.crafted.rail=1..}] run give @s rail[can_place_on=[{blocks:"minecraft:cyan_terracotta"}]] 6
scoreboard players remove @a[scores={mine.game.crafted.rail=1..}] mine.game.crafted.rail 6


execute as @a[scores={mine.game.crafted.torch=1..}] run clear @s torch[!can_place_on] 1
execute as @a[scores={mine.game.crafted.torch=1..}] run give @s torch[can_place_on=[{blocks:"minecraft:oak_planks"}]] 1
scoreboard players remove @a[scores={mine.game.crafted.torch=1..}] mine.game.crafted.torch 1

execute as @a[scores={mine.game.crafted.cobweb=1..}] run clear @s cobweb[!can_place_on] 2
execute as @a[scores={mine.game.crafted.cobweb=1..}] run give @s cobweb[can_place_on=[{blocks:["minecraft:cyan_terracotta","minecraft:infested_stone","minecraft:diamond_ore","minecraft:oak_planks","minecraft:cobweb"]}]] 2
scoreboard players remove @a[scores={mine.game.crafted.cobweb=1..}] mine.game.crafted.cobweb 2

execute as @a[scores={mine.game.crafted.firework=1..}] run clear @s firework_rocket[lore=[]] 1
execute as @a[scores={mine.game.crafted.firework=1..}] run give @s firework_rocket[lore=[{color:"blue",text:"hold in offhand",italic:0b}],fireworks={explosions:[{shape:"burst",colors:[6719955,15790320,12801229]}],flight_duration:1b}] 1
scoreboard players remove @a[scores={mine.game.crafted.firework=1..}] mine.game.crafted.firework 1


execute as @a if items entity @s weapon.offhand minecraft:lantern at @s unless block ~ ~1 ~ light run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace light
execute as @a if items entity @s weapon.offhand minecraft:lantern at @s if block ~ ~1 ~ air run setblock ~ ~1 ~ light[level=9]
execute at @a if block ~ ~1 ~ light unless items entity @p weapon.offhand minecraft:lantern run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace light

execute as @e[type=snowball] run data modify entity @s Owner set from entity @n[type=warden,dy=-3] UUID

execute as @e[type=chicken] at @s positioned ~-8 ~-1 ~-8 as @e[type=warden,dx=16,dz=16,dy=2] run data remove entity @s anger.suspects[1]
execute as @e[type=chicken] at @s positioned ~-8 ~-1 ~-8 at @e[type=warden,dx=16,dz=16,dy=2] run data modify entity @n anger.suspects[0].uuid set from entity @s UUID

execute as @a[scores={mine.game.crafted.wool=1..}] run clear @s white_wool[!can_place_on] 4
execute as @a[scores={mine.game.crafted.wool=1..}] run give @s white_wool[can_place_on=[{blocks:["minecraft:cyan_terracotta","minecraft:infested_stone","minecraft:diamond_ore","minecraft:oak_planks","minecraft:white_wool"]}]] 4
scoreboard players remove @a[scores={mine.game.crafted.wool=1..}] mine.game.crafted.wool 4

scoreboard players remove @a[scores={mine.game.crafted.snowball=1..}] mine.game.crafted.snowball 1


execute unless score mine.handler mine.timer.summon matches 0..2147483647 run scoreboard players set mine.handler mine.timer.summon 1
execute if score mine.handler mine.timer.summon matches 1000 as @r[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^10 ^ ^10 run function mine:mobs/game/creaking/creaking
execute if score mine.handler mine.timer.summon matches 1000 as @r[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^10 ^ ^10 run function mine:mobs/game/hoglin/hoglin
execute if score mine.handler mine.timer.summon matches 1000 as @r[gamemode=adventure] at @s rotated as @s rotated ~ 0 positioned ^10 ^ ^10 run function mine:mobs/game/warden/warden
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/creaking/archer
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/creaking/builder
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/creaking/fighter
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/creaking/tracker
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/hoglin/archer
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/hoglin/builder
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/hoglin/fighter
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/hoglin/tracker
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/warden/archer
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/warden/builder
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/warden/fighter
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run function mine:mobs/loot/warden/tracker
execute if score mine.handler mine.timer.summon matches 0 positioned 0 110 0 run spreadplayers 0 0 8 65 false @e[distance=0]
execute if score mine.handler mine.timer.summon matches 0 run function mine:summontimer
scoreboard players remove mine.handler mine.timer.summon 1
execute as @e if score @s mine.game.y matches 21 at @s run tp @s ~ 100 ~

execute in mine:lobby as @e[type=silverfish] at @s store success entity @s Pos[1] double -300 run summon endermite

execute in mine:lobby as @a[scores={mine.game.mined.diamond_ore=1..}] at @s at @n[type=item,nbt={Item:{id:"minecraft:diamond"}}] run playsound minecraft:block.amethyst_cluster.hit player @s ~ ~ ~ 0.8 1.2 0
scoreboard players reset @a mine.game.mined.diamond_ore

execute in mine:lobby as @a if items entity @s weapon.offhand compass at @s if score @p[distance=1..20] mine.game.y = @s mine.game.y run setblock ~ 199 ~ barrel{Items:[{Slot:0b,id:"minecraft:compass",count:1,components:{"minecraft:custom_name":{text:"Player Compass",italic:0b,color:"white"},"minecraft:lore":[{text:"hold in offhand",italic:0b,color:"blue"}],"minecraft:lodestone_tracker":{target:{dimension:"mine:lobby",pos:[I;0,0,0]},tracked:true}}}]}
execute in mine:lobby as @a if items entity @s weapon.offhand compass at @s as @p[distance=1..20] if score @p mine.game.y = @s mine.game.y run data modify block ~ 199 ~ Items[0].components."minecraft:lodestone_tracker".target.pos set from entity @s Pos
execute in mine:lobby as @a if items entity @s weapon.offhand compass at @s if score @p[distance=1..20] mine.game.y = @s mine.game.y run item replace entity @s weapon.offhand from block ~ 199 ~ container.0
execute in mine:lobby as @a if items entity @s weapon.offhand compass at @s if score @p[distance=1..20] mine.game.y = @s mine.game.y run setblock ~ 199 ~ air


execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 30 run title @a title "Lobby"

execute if score mine.handler mine.timer matches 200 run scoreboard players enable @a[gamemode=adventure] mine.vote

execute if score mine.handler mine.timer matches 200 run tellraw @a [{"color":"yellow","text":"\nVote!\n"},{"color":"dark_gray","text":" | "}]
execute if score mine.handler mine.stage.creaking matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 0"},"color":"dark_red","text":"Creaking"}]
execute if score mine.handler mine.stage.hoglin matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 1"},"color":"gold","text":"Hoglin"}]
execute if score mine.handler mine.stage.warden matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 2"},"color":"dark_aqua","text":"Warden"}]
tellraw @a [{"color":"dark_gray","text":" | "}]

execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=0}] run scoreboard players add mine.handler mine.vote.creaking 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=1}] run scoreboard players add mine.handler mine.vote.hoglin 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=2}] run scoreboard players add mine.handler mine.vote.warden 1

execute if score mine.handler mine.vote.creaking >= mine.handler mine.vote.hoglin if score mine.handler mine.vote.creaking >= mine.handler mine.vote.warden unless score mine.handler mine.stage.creaking matches 2 run scoreboard players set mine.handler mine.stage.creaking 1
execute if score mine.handler mine.vote.creaking < mine.handler mine.vote.hoglin if score mine.handler mine.vote.hoglin >= mine.handler mine.vote.warden unless score mine.handler mine.stage.hoglin matches 2 unless score mine.handler mine.stage.creaking matches 1 run scoreboard players set mine.handler mine.stage.hoglin 1
execute if score mine.handler mine.vote.warden > mine.handler mine.vote.creaking if score mine.handler mine.vote.warden > mine.handler mine.vote.hoglin unless score mine.handler mine.stage.warden matches 2 unless score mine.handler mine.stage.creaking matches 1 unless score mine.handler mine.stage.hoglin matches 1 run scoreboard players set mine.handler mine.stage.warden 1