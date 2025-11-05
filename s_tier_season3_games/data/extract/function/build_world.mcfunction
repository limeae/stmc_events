# build world for each round

# inputs the following macros (from data storage @ extract:map):
# {slot1:}, {slot2:}, ... {slot8:}

# teams are referred to in storage using the following:
# 1- red, 2- orange, ... 8- blue

# first, builds each arena depending on the data stored
# then, summons the armor stands & interaction entities that will award players items

# store macro data somewhere more useful
scoreboard objectives add .slot1 dummy
scoreboard objectives add .slot2 dummy
scoreboard objectives add .slot3 dummy
scoreboard objectives add .slot4 dummy
scoreboard objectives add .slot5 dummy
scoreboard objectives add .slot6 dummy
scoreboard objectives add .slot7 dummy
scoreboard objectives add .slot8 dummy
scoreboard objectives add .time dummy
$scoreboard players set .extractData .slot1 $(slot1)
$scoreboard players set .extractData .slot2 $(slot2)
$scoreboard players set .extractData .slot3 $(slot3)
$scoreboard players set .extractData .slot4 $(slot4)
$scoreboard players set .extractData .slot5 $(slot5)
$scoreboard players set .extractData .slot6 $(slot6)
$scoreboard players set .extractData .slot7 $(slot7)
$scoreboard players set .extractData .slot8 $(slot8)
$scoreboard players set .extractData .time $(time)

# slot 1-1
execute in extract:extract if score .extractData .time matches 5 \
        if score .extractData .slot1 matches 1 run clone -20 29 96 20 -3 69 30 130 27
execute in extract:extract if score .extractData .time matches 5 \
        if score .extractData .slot1 matches 2 run clone 26 29 96 66 -3 69 30 130 27
execute in extract:extract if score .extractData .time matches 5 \
        if score .extractData .slot1 matches 3 run clone 72 29 96 112 -3 69 30 130 27
execute in extract:extract if score .extractData .time matches 5 \
        if score .extractData .slot1 matches 4 run clone 256 29 96 296 -3 69 30 130 27
execute in extract:extract if score .extractData .time matches 5 \
        if score .extractData .slot1 matches 5 run clone 118 29 96 158 -3 69 30 130 27
execute in extract:extract if score .extractData .time matches 5 \
        if score .extractData .slot1 matches 6 run clone 164 29 96 204 -3 69 30 130 27
execute in extract:extract if score .extractData .time matches 5 \
        if score .extractData .slot1 matches 7 run clone 210 29 96 250 -3 69 30 130 27
execute in extract:extract if score .extractData .time matches 5 \
        if score .extractData .slot1 matches 8 run clone 302 29 96 342 -3 69 30 130 27

# slot 1-2
execute in extract:extract if score .extractData .time matches 10 \
        if score .extractData .slot2 matches 2 run clone 26 29 37 66 -3 64 30 130 0
execute in extract:extract if score .extractData .time matches 10 \
        if score .extractData .slot2 matches 3 run clone 72 29 37 112 -3 64 30 130 0
execute in extract:extract if score .extractData .time matches 10 \
        if score .extractData .slot2 matches 4 run clone 256 29 37 296 -3 64 30 130 0
execute in extract:extract if score .extractData .time matches 10 \
        if score .extractData .slot2 matches 5 run clone 118 29 37 158 -3 64 30 130 0
execute in extract:extract if score .extractData .time matches 10 \
        if score .extractData .slot2 matches 6 run clone 164 29 37 204 -3 64 30 130 0
execute in extract:extract if score .extractData .time matches 10 \
        if score .extractData .slot2 matches 7 run clone 210 29 37 250 -3 64 30 130 0
execute in extract:extract if score .extractData .time matches 10 \
        if score .extractData .slot2 matches 8 run clone 302 29 37 342 -3 64 30 130 0

# slot 2-1
execute in extract:extract if score .extractData .time matches 15 \
        if score .extractData .slot3 matches 1 run clone -20 29 96 20 -3 69 30 130 87
execute in extract:extract if score .extractData .time matches 15 \
        if score .extractData .slot3 matches 2 run clone 26 29 96 66 -3 69 30 130 87
execute in extract:extract if score .extractData .time matches 15 \
        if score .extractData .slot3 matches 3 run clone 72 29 96 112 -3 69 30 130 87
execute in extract:extract if score .extractData .time matches 15 \
        if score .extractData .slot3 matches 4 run clone 256 29 96 296 -3 69 30 130 87
execute in extract:extract if score .extractData .time matches 15 \
        if score .extractData .slot3 matches 5 run clone 118 29 96 158 -3 69 30 130 87
execute in extract:extract if score .extractData .time matches 15 \
        if score .extractData .slot3 matches 6 run clone 164 29 96 204 -3 69 30 130 87
execute in extract:extract if score .extractData .time matches 15 \
        if score .extractData .slot3 matches 7 run clone 210 29 96 250 -3 69 30 130 87
execute in extract:extract if score .extractData .time matches 15 \
        if score .extractData .slot3 matches 8 run clone 302 29 96 342 -3 69 30 130 87

# slot 2-2
execute in extract:extract if score .extractData .time matches 20 \
        if score .extractData .slot4 matches 2 run clone 26 29 37 66 -3 64 30 130 60
execute in extract:extract if score .extractData .time matches 20 \
        if score .extractData .slot4 matches 3 run clone 72 29 37 112 -3 64 30 130 60
execute in extract:extract if score .extractData .time matches 20 \
        if score .extractData .slot4 matches 4 run clone 256 29 37 296 -3 64 30 130 60
execute in extract:extract if score .extractData .time matches 20 \
        if score .extractData .slot4 matches 5 run clone 118 29 37 158 -3 64 30 130 60
execute in extract:extract if score .extractData .time matches 20 \
        if score .extractData .slot4 matches 6 run clone 164 29 37 204 -3 64 30 130 60
execute in extract:extract if score .extractData .time matches 20 \
        if score .extractData .slot4 matches 7 run clone 210 29 37 250 -3 64 30 130 60
execute in extract:extract if score .extractData .time matches 20 \
        if score .extractData .slot4 matches 8 run clone 302 29 37 342 -3 64 30 130 60

# slot 3-1
execute in extract:extract if score .extractData .time matches 25 \
        if score .extractData .slot5 matches 1 run clone -20 29 96 20 -3 69 -20 130 87
execute in extract:extract if score .extractData .time matches 25 \
        if score .extractData .slot5 matches 2 run clone 26 29 96 66 -3 69 -20 130 87
execute in extract:extract if score .extractData .time matches 25 \
        if score .extractData .slot5 matches 3 run clone 72 29 96 112 -3 69 -20 130 87
execute in extract:extract if score .extractData .time matches 25 \
        if score .extractData .slot5 matches 4 run clone 256 29 96 296 -3 69 -20 130 87
execute in extract:extract if score .extractData .time matches 25 \
        if score .extractData .slot5 matches 5 run clone 118 29 96 158 -3 69 -20 130 87
execute in extract:extract if score .extractData .time matches 25 \
        if score .extractData .slot5 matches 6 run clone 164 29 96 204 -3 69 -20 130 87
execute in extract:extract if score .extractData .time matches 25 \
        if score .extractData .slot5 matches 7 run clone 210 29 96 250 -3 69 -20 130 87
execute in extract:extract if score .extractData .time matches 25 \
        if score .extractData .slot5 matches 8 run clone 302 29 96 342 -3 69 -20 130 87

# slot 3-2
execute in extract:extract if score .extractData .time matches 30 \
        if score .extractData .slot6 matches 2 run clone 26 29 37 66 -3 64 -20 130 60
execute in extract:extract if score .extractData .time matches 30 \
        if score .extractData .slot6 matches 3 run clone 72 29 37 112 -3 64 -20 130 60
execute in extract:extract if score .extractData .time matches 30 \
        if score .extractData .slot6 matches 4 run clone 256 29 37 296 -3 64 -20 130 60
execute in extract:extract if score .extractData .time matches 30 \
        if score .extractData .slot6 matches 5 run clone 118 29 37 158 -3 64 -20 130 60
execute in extract:extract if score .extractData .time matches 30 \
        if score .extractData .slot6 matches 6 run clone 164 29 37 204 -3 64 -20 130 60
execute in extract:extract if score .extractData .time matches 30 \
        if score .extractData .slot6 matches 7 run clone 210 29 37 250 -3 64 -20 130 60
execute in extract:extract if score .extractData .time matches 30 \
        if score .extractData .slot6 matches 8 run clone 302 29 37 342 -3 64 -20 130 60

# slot 4-1
execute in extract:extract if score .extractData .time matches 35 \
        if score .extractData .slot7 matches 1 run clone -20 29 96 20 -3 69 -70 130 87
execute in extract:extract if score .extractData .time matches 35 \
        if score .extractData .slot7 matches 2 run clone 26 29 96 66 -3 69 -70 130 87
execute in extract:extract if score .extractData .time matches 35 \
        if score .extractData .slot7 matches 3 run clone 72 29 96 112 -3 69 -70 130 87
execute in extract:extract if score .extractData .time matches 35 \
        if score .extractData .slot7 matches 4 run clone 256 29 96 296 -3 69 -70 130 87
execute in extract:extract if score .extractData .time matches 35 \
        if score .extractData .slot7 matches 5 run clone 118 29 96 158 -3 69 -70 130 87
execute in extract:extract if score .extractData .time matches 35 \
        if score .extractData .slot7 matches 6 run clone 164 29 96 204 -3 69 -70 130 87
execute in extract:extract if score .extractData .time matches 35 \
        if score .extractData .slot7 matches 7 run clone 210 29 96 250 -3 69 -70 130 87
execute in extract:extract if score .extractData .time matches 35 \
        if score .extractData .slot7 matches 8 run clone 302 29 96 342 -3 69 -70 130 87

# slot 4-2
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 2 run clone 26 29 37 66 -3 64 -70 130 60
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 3 run clone 72 29 37 112 -3 64 -70 130 60
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 4 run clone 256 29 37 296 -3 64 -70 130 60
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 5 run clone 118 29 37 158 -3 64 -70 130 60
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 6 run clone 164 29 37 204 -3 64 -70 130 60
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 7 run clone 210 29 37 250 -3 64 -70 130 60
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 8 run clone 302 29 37 342 -3 64 -70 130 60

# teleport players to their respective slots

# slot 1-1
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot1 matches 1 as @a[team=RED_RACCOONS] run tp @s 50 134 50
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot1 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 50 134 50
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot1 matches 3 as @a[team=PINK_PIKAS] run tp @s 50 134 50
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot1 matches 4 as @a[team=YELLOW_YAKS] run tp @s 50 134 50
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot1 matches 5 as @a[team=GREEN_GOATS] run tp @s 50 134 50
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot1 matches 6 as @a[team=CYAN_COUGARS] run tp @s 50 134 50
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot1 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 50 134 50
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot1 matches 8 as @a[team=BLUE_BEARS] run tp @s 50 134 50

# slot 1-2
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot2 matches 1 as @a[team=RED_RACCOONS] run tp @s 50 134 4
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot2 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 50 134 4
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot2 matches 3 as @a[team=PINK_PIKAS] run tp @s 50 134 4
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot2 matches 4 as @a[team=YELLOW_YAKS] run tp @s 50 134 4
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot2 matches 5 as @a[team=GREEN_GOATS] run tp @s 50 134 4
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot2 matches 6 as @a[team=CYAN_COUGARS] run tp @s 50 134 4
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot2 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 50 134 4
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot2 matches 8 as @a[team=BLUE_BEARS] run tp @s 50 134 4

# slot 2-1
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot3 matches 1 as @a[team=RED_RACCOONS] run tp @s 50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot3 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot3 matches 3 as @a[team=PINK_PIKAS] run tp @s 50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot3 matches 4 as @a[team=YELLOW_YAKS] run tp @s 50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot3 matches 5 as @a[team=GREEN_GOATS] run tp @s 50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot3 matches 6 as @a[team=CYAN_COUGARS] run tp @s 50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot3 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot3 matches 8 as @a[team=BLUE_BEARS] run tp @s 50 134 110

# slot 2-2
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot4 matches 1 as @a[team=RED_RACCOONS] run tp @s 50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot4 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot4 matches 3 as @a[team=PINK_PIKAS] run tp @s 50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot4 matches 4 as @a[team=YELLOW_YAKS] run tp @s 50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot4 matches 5 as @a[team=GREEN_GOATS] run tp @s 50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot4 matches 6 as @a[team=CYAN_COUGARS] run tp @s 50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot4 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot4 matches 8 as @a[team=BLUE_BEARS] run tp @s 50 134 64

# slot 3-1
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot5 matches 1 as @a[team=RED_RACCOONS] run tp @s 0 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot5 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 0 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot5 matches 3 as @a[team=PINK_PIKAS] run tp @s 0 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot5 matches 4 as @a[team=YELLOW_YAKS] run tp @s 0 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot5 matches 5 as @a[team=GREEN_GOATS] run tp @s 0 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot5 matches 6 as @a[team=CYAN_COUGARS] run tp @s 0 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot5 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 0 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot5 matches 8 as @a[team=BLUE_BEARS] run tp @s 0 134 110

# slot 3-2
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot6 matches 1 as @a[team=RED_RACCOONS] run tp @s 0 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot6 matches 2 as @a[team=ORANGE_OTTERS] run tp @s 0 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot6 matches 3 as @a[team=PINK_PIKAS] run tp @s 0 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot6 matches 4 as @a[team=YELLOW_YAKS] run tp @s 0 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot6 matches 5 as @a[team=GREEN_GOATS] run tp @s 0 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot6 matches 6 as @a[team=CYAN_COUGARS] run tp @s 0 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot6 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s 0 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot6 matches 8 as @a[team=BLUE_BEARS] run tp @s 0 134 64

# slot 4-1
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot7 matches 1 as @a[team=RED_RACCOONS] run tp @s -50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot7 matches 2 as @a[team=ORANGE_OTTERS] run tp @s -50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot7 matches 3 as @a[team=PINK_PIKAS] run tp @s -50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot7 matches 4 as @a[team=YELLOW_YAKS] run tp @s -50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot7 matches 5 as @a[team=GREEN_GOATS] run tp @s -50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot7 matches 6 as @a[team=CYAN_COUGARS] run tp @s -50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot7 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s -50 134 110
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot7 matches 8 as @a[team=BLUE_BEARS] run tp @s -50 134 110

# slot 4-2
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 1 as @a[team=RED_RACCOONS] run tp @s -50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 2 as @a[team=ORANGE_OTTERS] run tp @s -50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 3 as @a[team=PINK_PIKAS] run tp @s -50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 4 as @a[team=YELLOW_YAKS] run tp @s -50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 5 as @a[team=GREEN_GOATS] run tp @s -50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 6 as @a[team=CYAN_COUGARS] run tp @s -50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 7 as @a[team=PURPLE_PENGUINS] run tp @s -50 134 64
execute in extract:extract if score .extractData .time matches 40 \
        if score .extractData .slot8 matches 8 as @a[team=BLUE_BEARS] run tp @s -50 134 64

# summon armor stands & interaction entities

# slot 1-1
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 55 134 50 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 55 134 50 {width:1f,height:2f,Tags:["zombie"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 54 134 52 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[117F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 54 134 52 {width:1f,height:2f,Tags:["piglin"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 52 134 53 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[147F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 52 134 53 {width:1f,height:2f,Tags:["skeleton"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 48 134 53 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[-147F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 48 134 53 {width:1f,height:2f,Tags:["medic"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 46 134 52 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[-117F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 46 134 52 {width:1f,height:2f,Tags:["miner"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 45 134 50 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 45 134 50 {width:1f,height:2f,Tags:["witch"]}

# slot 1-2
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 45 134 4 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 45 134 4 {width:1f,height:2f,Tags:["zombie"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 46 134 2 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[-63F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 46 134 2 {width:1f,height:2f,Tags:["piglin"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 48 134 1 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[-33F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 48 134 1 {width:1f,height:2f,Tags:["skeleton"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 52 134 1 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[33F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 52 134 1 {width:1f,height:2f,Tags:["medic"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 54 134 2 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[63F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 54 134 2 {width:1f,height:2f,Tags:["miner"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 55 134 4 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 55 134 4 {width:1f,height:2f,Tags:["witch"]}

# slot 2-1
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 55 134 110 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 55 134 110 {width:1f,height:2f,Tags:["zombie"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 54 134 112 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[117F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 54 134 112 {width:1f,height:2f,Tags:["piglin"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 52 134 113 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[147F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 52 134 113 {width:1f,height:2f,Tags:["skeleton"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 48 134 113 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[-147F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 48 134 113 {width:1f,height:2f,Tags:["medic"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 46 134 112 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[-117F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 46 134 112 {width:1f,height:2f,Tags:["miner"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 45 134 110 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 45 134 110 {width:1f,height:2f,Tags:["witch"]}

# slot 2-2
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 45 134 64 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 45 134 64 {width:1f,height:2f,Tags:["zombie"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 46 134 62 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[-63F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 46 134 62 {width:1f,height:2f,Tags:["piglin"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 48 134 61 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[-33F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 48 134 61 {width:1f,height:2f,Tags:["skeleton"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 52 134 61 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[33F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 52 134 61 {width:1f,height:2f,Tags:["medic"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 54 134 62 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[63F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 54 134 62 {width:1f,height:2f,Tags:["miner"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 55 134 64 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 55 134 64 {width:1f,height:2f,Tags:["witch"]}

# slot 3-1
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 5 134 110 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 5 134 110 {width:1f,height:2f,Tags:["zombie"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 4 134 112 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[117F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 4 134 112 {width:1f,height:2f,Tags:["piglin"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 2 134 113 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[147F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 2 134 113 {width:1f,height:2f,Tags:["skeleton"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -2 134 113 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[-147F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -2 134 113 {width:1f,height:2f,Tags:["medic"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -4 134 112 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[-117F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -4 134 112 {width:1f,height:2f,Tags:["miner"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -5 134 110 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -5 134 110 {width:1f,height:2f,Tags:["witch"]}

# slot 3-2
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -5 134 64 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -5 134 64 {width:1f,height:2f,Tags:["zombie"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -4 134 62 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[-63F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -4 134 62 {width:1f,height:2f,Tags:["piglin"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -2 134 61 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[-33F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -2 134 61 {width:1f,height:2f,Tags:["skeleton"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 2 134 61 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[33F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 2 134 61 {width:1f,height:2f,Tags:["medic"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 4 134 62 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[63F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 4 134 62 {width:1f,height:2f,Tags:["miner"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand 5 134 64 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction 5 134 64 {width:1f,height:2f,Tags:["witch"]}

# slot 4-1
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -45 134 110 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -45 134 110 {width:1f,height:2f,Tags:["zombie"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -46 134 112 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[117F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -46 134 112 {width:1f,height:2f,Tags:["piglin"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -48 134 113 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[147F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -48 134 113 {width:1f,height:2f,Tags:["skeleton"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -52 134 113 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[-147F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -52 134 113 {width:1f,height:2f,Tags:["medic"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -54 134 112 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[-117F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -54 134 112 {width:1f,height:2f,Tags:["miner"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -55 134 110 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -55 134 110 {width:1f,height:2f,Tags:["witch"]}

# slot 4-2
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -55 134 64 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -55 134 64 {width:1f,height:2f,Tags:["zombie"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -54 134 62 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[-63F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -54 134 62 {width:1f,height:2f,Tags:["piglin"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -52 134 61 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[-33F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -52 134 61 {width:1f,height:2f,Tags:["skeleton"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -48 134 61 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[33F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -48 134 61 {width:1f,height:2f,Tags:["medic"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -46 134 62 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[63F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -46 134 62 {width:1f,height:2f,Tags:["miner"]}

execute in extract:extract if score .extractData .time matches 45 run \ 
        summon armor_stand -45 134 64 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in extract:extract if score .extractData .time matches 45 run \ 
        summon interaction -45 134 64 {width:1f,height:2f,Tags:["witch"]}
