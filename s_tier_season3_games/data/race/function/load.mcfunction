# load function for race

# this function runs whenever beginning the race game

# teleport players to spawn
execute in race:race run tp @a -13 105 14

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a instant_health 1 110 true

# give effects
effect give @a saturation infinite 0 true
effect give @a resistance infinite 10 true
effect give @a dolphins_grace infinite 1 true
effect give @a water_breathing infinite 0 true

# set xp
xp set @a 0 levels
xp set @a 0 points

# kill all entities
execute in race:race run kill @e[type=!player]

# set world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16701501,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=BLUE_BEARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3949738,equippable={slot:"feet",asset_id:"minecraft:turtle_scute"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"fall_damage_multiplier",type:"fall_damage_multiplier",amount:-1,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# disable player collision (best i've got)
team modify RED_RACCOONS collisionRule never
team modify ORANGE_OTTERS collisionRule never
team modify PINK_PIKAS collisionRule never
team modify YELLOW_YAKS collisionRule never
team modify GREEN_GOATS collisionRule never
team modify CYAN_COUGARS collisionRule never
team modify PURPLE_PENGUINS collisionRule never
team modify BLUE_BEARS collisionRule never

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add race.timer.delay1 dummy
scoreboard objectives add race.timer.explanation dummy
scoreboard objectives add race.timer.delay2 dummy
scoreboard objectives add race.timer.game dummy
scoreboard objectives add race.timer.delay3 dummy
# stats
scoreboard objectives add race.laps_completed dummy
scoreboard objectives add race.recentlyCompletedLap dummy
scoreboard objectives add race.recentCompletionDelay dummy
scoreboard objectives add race.players_completed dummy
scoreboard objectives add race.teams_completed dummy
scoreboard objectives add race.laptime.1 dummy
scoreboard objectives add race.laptime.2 dummy
scoreboard objectives add race.laptime.3 dummy
scoreboard objectives add race.laptime.4 dummy
scoreboard objectives add race.laptime.total dummy
scoreboard objectives add race.laptime.tick dummy
scoreboard objectives add race.laptime.seconds dummy
scoreboard objectives add race.laptime.mins dummy
scoreboard objectives add race.fastest_lap dummy
scoreboard objectives add race.fastest_lap.rank dummy
scoreboard objectives add race.fastest_lap.secs dummy
scoreboard objectives add race.fastest_lap.mins dummy
scoreboard objectives add race.completion.rank dummy
scoreboard objectives add race.checkpoints_completed dummy
scoreboard objectives add race.currentPlacement dummy
scoreboard objectives add race.soundThisTick dummy
# points
scoreboard objectives add race.points.indiv dummy
scoreboard objectives add race.points.indiv.rank dummy
scoreboard objectives add race.points.team dummy
scoreboard objectives add race.points.team.rank dummy
scoreboard objectives add race.points.placement dummy

# (re)set all necessary values
scoreboard players set race.handler race.stage 0

scoreboard players set race.handler race.timer.delay1 0
scoreboard players set race.handler race.timer.explanation 0
scoreboard players set race.handler race.timer.delay2 0
scoreboard players set race.handler race.timer.game 0
scoreboard players set race.handler race.timer.delay3 0

scoreboard players set @a race.laps_completed 0
scoreboard players set @a race.recentlyCompletedLap 0
scoreboard players set @a race.recentCompletionDelay 0
scoreboard players set race.handler race.players_completed 0
scoreboard players set race.handler race.teams_completed 0
scoreboard players set @a race.laptime.1 0
scoreboard players set @a race.laptime.2 0
scoreboard players set @a race.laptime.3 0
scoreboard players set @a race.laptime.4 0
scoreboard players set @a race.laptime.total 0
scoreboard players set @a race.laptime.tick 0
scoreboard players set @a race.laptime.seconds 0
scoreboard players set @a race.laptime.mins 0
scoreboard players set @a race.fastest_lap 0
scoreboard players set @a race.fastest_lap.rank 0
scoreboard players set @a race.fastest_lap.secs 0
scoreboard players set @a race.fastest_lap.mins 0
scoreboard players set @a race.completion.rank 0
scoreboard players set @a race.checkpoints_completed 0
scoreboard players set @a race.currentPlacement 0
scoreboard players set @a race.soundThisTick 0

scoreboard players set @a race.points.indiv 0
scoreboard players set race.handler race.points.placement 8

scoreboard objectives remove race.sidebar