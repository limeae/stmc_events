# game tick function for race [RACE]

# <===== GAME START =====>

# remove starting barrier
execute in race:race if score race.handler race.timer.game matches 1 run fill -15 106 10 -11 109 10 air replace minecraft:spruce_fence
execute in race:race if score race.handler race.timer.game matches 1 run fill -15 106 17 -11 109 17 air replace minecraft:red_stained_glass

# reapply effects & protective boots to ensure everyone has them
execute if score race.handler race.timer.game matches 1 run effect give @a invisibility infinite 0 true
execute if score race.handler race.timer.game matches 1 run effect give @a saturation infinite 0 true
execute if score race.handler race.timer.game matches 1 run effect give @a resistance infinite 10 true
execute if score race.handler race.timer.game matches 1 run effect give @a dolphins_grace infinite 0 true
execute if score race.handler race.timer.game matches 1 run effect give @a water_breathing infinite 0 true

execute if score race.handler race.timer.game matches 1 as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score race.handler race.timer.game matches 1 as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score race.handler race.timer.game matches 1 as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score race.handler race.timer.game matches 1 as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score race.handler race.timer.game matches 1 as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score race.handler race.timer.game matches 1 as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score race.handler race.timer.game matches 1 as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute if score race.handler race.timer.game matches 1 as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# <===== GAME END =====>

# end by time
execute if score race.handler race.timer.game matches 14400.. run scoreboard players set race.handler race.stage 4

# end by all players completed
execute if score race.handler race.teams_completed matches 8 run scoreboard players set race.handler race.stage 4

# <===== INCREMENT TIMERS =====>

# depending on laps completed, we increment different timers
execute as @a if score @s race.laps_completed matches 0 run scoreboard players add @s race.laptime.1 1
execute as @a if score @s race.laps_completed matches 1 run scoreboard players add @s race.laptime.2 1
execute as @a if score @s race.laps_completed matches 2 run scoreboard players add @s race.laptime.3 1
execute as @a if score @s race.laps_completed matches 3 run scoreboard players add @s race.laptime.4 1

# increment recent completion delay
execute as @a if score @s race.recentlyCompletedLap matches 1.. run scoreboard players add @s race.recentCompletionDelay 1
# reset recent completion delay if it reaches 80
execute as @a if score @s race.recentCompletionDelay matches 80.. run scoreboard players set @s race.recentlyCompletedLap 0
execute as @a if score @s race.recentCompletionDelay matches 80.. run scoreboard players set @s race.recentCompletionDelay 0

# increment each players' lap times for display
execute as @a if score @s race.laps_completed matches 0..3 run scoreboard players add @s race.laptime.tick 1

execute as @a if score @s race.laps_completed matches 0..3 if score @s race.laptime.tick matches 20 run scoreboard players add @s race.laptime.seconds 1
execute as @a if score @s race.laps_completed matches 0..3 if score @s race.laptime.tick matches 20 run scoreboard players set @s race.laptime.tick 0

execute as @a if score @s race.laps_completed matches 0..3 if score @s race.laptime.seconds matches 60 run scoreboard players add @s race.laptime.mins 1
execute as @a if score @s race.laps_completed matches 0..3 if score @s race.laptime.seconds matches 60 run scoreboard players set @s race.laptime.seconds 0

# <===== LAP COMPLETIONS =====>

# checkpoint update (also checks for lap completions)
execute as @a unless score @s race.laps_completed matches 4.. run function race:checkpoint_update

# grant elytra
execute in race:race as @a[x=-17,y=125,z=-10,dx=7,dy=3,dz=4] run item replace entity @s armor.chest with elytra[enchantments={"minecraft:binding_curse":1}]
execute in race:race as @a[x=-17,y=125,z=-10,dx=7,dy=3,dz=4] run item replace entity @s armor.legs with slime_ball[equippable={slot:"legs",camera_overlay:"stmc:overlay/elytra_icon",equip_sound:"item.armor.equip_elytra"},minecraft:enchantments={binding_curse:1,vanishing_curse:1}]
# teleport players back to checkpoint if they're out of bounds
execute in race:race as @a at @s if score @s race.checkpoints_completed matches 8 if entity @s[x=-17,dx=-100] run tp @s -14 126 -10
execute in race:race as @a at @s if score @s race.checkpoints_completed matches 8 if entity @s[z=57,dz=50] run tp @s -14 126 -10
execute in race:race as @a at @s if score @s race.checkpoints_completed matches 8 if entity @s[x=-11,dx=100,z=-7,dz=-50] run tp @s -14 126 -10
execute in race:race as @a at @s if score @s race.checkpoints_completed matches 8 if entity @s[x=57,dx=50] run tp @s -14 126 -10

# grant trident
execute in race:race as @a[x=67,y=115,z=47,dx=1,dy=5,dz=5] run item replace entity @s hotbar.0 with minecraft:trident[enchantments={"riptide":2}]

# set players to spectator mode & announce if they have completed all laps
execute as @a[gamemode=!spectator] if score @s race.laps_completed matches 4.. run gamemode spectator @s

# update players & teams completed
scoreboard players set race.handler race.players_completed 0
execute as @a[scores={race.laps_completed=4..}] run scoreboard players add race.handler race.players_completed 1

scoreboard players set race.RedRaccoons race.players_completed 0
scoreboard players set race.OrangeOtters race.players_completed 0
scoreboard players set race.PinkPikas race.players_completed 0
scoreboard players set race.YellowYaks race.players_completed 0
scoreboard players set race.GreenGoats race.players_completed 0
scoreboard players set race.CyanCougars race.players_completed 0
scoreboard players set race.PurplePenguins race.players_completed 0
scoreboard players set race.BlueBears race.players_completed 0
execute as @a[scores={race.laps_completed=4..},team=RED_RACCOONS] run scoreboard players add race.RedRaccoons race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=ORANGE_OTTERS] run scoreboard players add race.OrangeOtters race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=PINK_PIKAS] run scoreboard players add race.PinkPikas race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=YELLOW_YAKS] run scoreboard players add race.YellowYaks race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=GREEN_GOATS] run scoreboard players add race.GreenGoats race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=CYAN_COUGARS] run scoreboard players add race.CyanCougars race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=PURPLE_PENGUINS] run scoreboard players add race.PurplePenguins race.players_completed 1
execute as @a[scores={race.laps_completed=4..},team=BLUE_BEARS] run scoreboard players add race.BlueBears race.players_completed 1

scoreboard players set race.handler race.teams_completed 0
execute if score race.RedRaccoons race.players_completed matches 4.. run scoreboard players add race.handler race.teams_completed 1
execute if score race.OrangeOtters race.players_completed matches 4.. run scoreboard players add race.handler race.teams_completed 1
execute if score race.PinkPikas race.players_completed matches 4.. run scoreboard players add race.handler race.teams_completed 1
execute if score race.YellowYaks race.players_completed matches 4.. run scoreboard players add race.handler race.teams_completed 1
execute if score race.GreenGoats race.players_completed matches 4.. run scoreboard players add race.handler race.teams_completed 1
execute if score race.CyanCougars race.players_completed matches 4.. run scoreboard players add race.handler race.teams_completed 1
execute if score race.PurplePenguins race.players_completed matches 4.. run scoreboard players add race.handler race.teams_completed 1
execute if score race.BlueBears race.players_completed matches 4.. run scoreboard players add race.handler race.teams_completed 1

# store player/team completion ranks & announce completion
execute as @a if score @s race.laps_completed matches 4.. unless score @s race.completion.rank matches 1.. if score @s race.laptime.seconds matches 0..9 run tellraw @a ["",{selector:"@s"},{text:" finished #",color:"green"},{score:{name:"race.handler",objective:"race.players_completed"},bold:true,color:"red"},{text:" in ",color:"green"},{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"gold"},{text:":0",bold:true,color:"gold"},{score:{name:"@s",objective:"race.laptime.seconds"},bold:true,color:"gold"},{text:"!",color:"green"},{text:"!",color:"green"}]
execute as @a if score @s race.laps_completed matches 4.. unless score @s race.completion.rank matches 1.. if score @s race.laptime.seconds matches 10.. run tellraw @a ["",{selector:"@s"},{text:" finished #",color:"green"},{score:{name:"race.handler",objective:"race.players_completed"},bold:true,color:"red"},{text:" in ",color:"green"},{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"gold"},{text:":",bold:true,color:"gold"},{score:{name:"@s",objective:"race.laptime.seconds"},bold:true,color:"gold"},{text:"!",color:"green"},{text:"!",color:"green"}]
execute as @a if score @s race.laps_completed matches 4.. unless score @s race.completion.rank matches 1.. run scoreboard players operation @s race.completion.rank = race.handler race.players_completed