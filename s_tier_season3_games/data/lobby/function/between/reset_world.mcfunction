# resets the world at the very start of the event

# summon trading villagers
execute in lobby:lobby run kill @e[type=villager]
execute in lobby:lobby run summon villager -30 100 30 \ 
        {Invulnerable:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[-90F,0F], \
        CustomName:{"bold":true,"color":"dark_green","text":"Banker"}, \
        active_effects:[{id:"minecraft:regeneration",amplifier:4,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \
        VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:jungle"}, \
        Offers:{Recipes:[{rewardExp:0b,maxUses:9999999, \
        buy:{id:"minecraft:sunflower",count:1,components:{"minecraft:item_name":{"color":"#FF6000","text":"Token"}}}, \
        sell:{id:"minecraft:paper",count:1,components:{"minecraft:item_name":{"color":"dark_green","text":"Invested Token"},"minecraft:custom_data":{invest:1b}}}}]}} 

# build voting areas
execute in lobby:lobby run forceload add -10 -100 50 100
execute in lobby:lobby run clone -6 40 -9 5 45 9 15 40 68
execute in lobby:lobby run clone -6 40 -9 5 45 9 15 40 46
execute in lobby:lobby run clone -6 40 -9 5 45 9 15 40 24
execute in lobby:lobby run clone -6 40 -9 5 45 9 15 40 2
execute in lobby:lobby run clone -6 40 -9 5 45 9 15 40 -20
execute in lobby:lobby run clone -6 40 -9 5 45 9 15 40 -42
execute in lobby:lobby run clone -6 40 -9 5 45 9 15 40 -64
execute in lobby:lobby run clone -6 40 -9 5 45 9 15 40 -86
execute in lobby:lobby run forceload remove -10 -100 50 100