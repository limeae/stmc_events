# this round features:
# red versus blue
# orange versus purple
# pink versus green
# yellow versus cyan

# increment timer
scoreboard players add extract.handler extract.timer.game.round6 1

# update timer bossbar
execute if score extract.handler extract.timer.game.round6 matches 1 run bossbar set extract.timer name "Round 6"
execute if score extract.handler extract.timer.game.round6 matches 1 run bossbar set extract.timer value 0
execute if score extract.handler extract.timer.game.round6 matches 1 run bossbar set extract.timer color red
execute if score extract.handler extract.timer.game.round6 matches 1 run bossbar set extract.timer max 2400
execute if score extract.handler extract.timer.game.round6 matches 1 run bossbar set extract.timer players @a
execute store result bossbar extract.timer value run scoreboard players get extract.handler extract.timer.game.round6

# resets
execute if score extract.handler extract.timer.game.round6 matches 1 run kill @e[type=item]
execute if score extract.handler extract.timer.game.round6 matches 1 run kill @e[type=armor_stand]
execute if score extract.handler extract.timer.game.round6 matches 1 run kill @e[type=interaction]
execute if score extract.handler extract.timer.game.round6 matches 1 run scoreboard players set @a extract.stats.alive 1
execute if score extract.handler extract.timer.game.round6 matches 1 run scoreboard players set @a extract.stats.deaths 0
execute if score extract.handler extract.timer.game.round6 matches 1 run clear @a
execute if score extract.handler extract.timer.game.round6 matches 1 run effect clear @a
execute if score extract.handler extract.timer.game.round6 matches 1 run effect give @a slow_falling 3 0 true
execute if score extract.handler extract.timer.game.round6 matches 5 run effect give @a instant_health 1 110 true
execute if score extract.handler extract.timer.game.round6 matches 5 run effect give @a saturation 1 5 true
execute if score extract.handler extract.timer.game.round6 matches 1 run gamemode adventure @a
execute if score extract.handler extract.timer.game.round6 matches 1 run item replace entity @a armor.feet with chainmail_boots[attribute_modifiers= \ 
        [{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}], \ 
        enchantments={"minecraft:binding_curse":1}]

# build world
execute if score extract.handler extract.timer.game.round6 matches 1 run data merge storage extract:map {slot1:1}
execute if score extract.handler extract.timer.game.round6 matches 1 run data merge storage extract:map {slot2:8}
execute if score extract.handler extract.timer.game.round6 matches 1 run data merge storage extract:map {slot3:2}
execute if score extract.handler extract.timer.game.round6 matches 1 run data merge storage extract:map {slot4:7}
execute if score extract.handler extract.timer.game.round6 matches 1 run data merge storage extract:map {slot5:3}
execute if score extract.handler extract.timer.game.round6 matches 1 run data merge storage extract:map {slot6:5}
execute if score extract.handler extract.timer.game.round6 matches 1 run data merge storage extract:map {slot7:4}
execute if score extract.handler extract.timer.game.round6 matches 1 run data merge storage extract:map {slot8:6}
execute if score extract.handler extract.timer.game.round6 matches 0..60 store result storage extract:map time int 1 run scoreboard players get extract.handler extract.timer.game.round6
execute if score extract.handler extract.timer.game.round6 matches 0..60 run function extract:build_world with storage extract:map

# check for interactions
execute in extract:extract as @e[tag=zombie] on attacker run function extract:inventory/grant_zombie
execute in extract:extract as @e[tag=piglin] on attacker run function extract:inventory/grant_piglin
execute in extract:extract as @e[tag=skeleton] on attacker run function extract:inventory/grant_skeleton
execute in extract:extract as @e[tag=medic] on attacker run function extract:inventory/grant_medic
execute in extract:extract as @e[tag=miner] on attacker run function extract:inventory/grant_miner
execute in extract:extract as @e[tag=witch] on attacker run function extract:inventory/grant_witch
execute in extract:extract as @e[type=interaction] run data remove entity @s attack

# countdown at 5 seconds
execute if score extract.handler extract.timer.game.round6 matches 200 run title @a actionbar {text:"5 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round6 matches 200 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute if score extract.handler extract.timer.game.round6 matches 220 run title @a actionbar {text:"4 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round6 matches 220 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.1
execute if score extract.handler extract.timer.game.round6 matches 240 run title @a actionbar {text:"3 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round6 matches 240 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
execute if score extract.handler extract.timer.game.round6 matches 260 run title @a actionbar {text:"2 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round6 matches 260 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.3
execute if score extract.handler extract.timer.game.round6 matches 280 run title @a actionbar {text:"1 second!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round6 matches 280 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.4
execute if score extract.handler extract.timer.game.round6 matches 300 run title @a title {text:"Go!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round6 matches 300 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

# start round after 15 seconds
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace red_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace orange_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace pink_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace yellow_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace green_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace cyan_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace purple_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace blue_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run fill -55 133 107 55 138 7 air replace barrier
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run kill @e[type=armor_stand]
execute in extract:extract if score extract.handler extract.timer.game.round6 matches 300 run kill @e[type=interaction]

# kills & block breaks are automatically calculated by the game, so no need to check up on them

# make sure blocks are not dropped
execute in extract:extract run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}}]
execute in extract:extract run kill @e[type=item,nbt={Item:{id:"minecraft:gold_block"}}]

# round end check
execute if score extract.handler extract.timer.game.round6 matches 2400 run scoreboard players set extract.handler extract.stats.roundsCompleted 6