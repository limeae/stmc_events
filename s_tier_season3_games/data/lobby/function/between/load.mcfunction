# load function for lobbies between games

# this function runs whenever instantiating a lobby

# teleport players to spawn
execute as @a unless entity @s[nbt={Dimension:"lobby:lobby"}] in lobby:lobby run tp @s 0 100 0

# force gamemode
gamemode adventure @a

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

# set attributes
execute as @a run attribute @s attack_damage base set 0
execute as @a run attribute @s knockback_resistance base set 1000

# set xp
xp set @a 0 levels
xp set @a 0 points

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
scoreboard objectives add lobby.timer dummy
scoreboard objectives add lobby.timer.temp dummy
scoreboard objectives add lobby.timer.secs dummy
scoreboard objectives add lobby.timer.mins dummy
scoreboard objectives add lobby.timer.switch dummy
# stats
scoreboard objectives add lobby.voting.raceCount dummy
scoreboard objectives add lobby.voting.solveCount dummy
scoreboard objectives add lobby.voting.trialsCount dummy
scoreboard objectives add lobby.voting.collectCount dummy
scoreboard objectives add lobby.voting.mineCount dummy
scoreboard objectives add lobby.voting.extractCount dummy
scoreboard objectives add lobby.voting.blitzCount dummy
scoreboard objectives add lobby.voting.brawlCount dummy

# (re)set all necessary values
scoreboard players set lobby.handler lobby.timer 0
scoreboard players set lobby.handler lobby.timer.temp 0
scoreboard players set lobby.handler lobby.timer.secs 0
scoreboard players set lobby.handler lobby.timer.mins 0

# manually set time to switch to voting stage
execute if score stmc.handler event.stage matches 0 run scoreboard players set lobby.handler lobby.timer.switch 4800
execute if score stmc.handler event.stage matches 2 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 4 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 6 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 8 run scoreboard players set lobby.handler lobby.timer.switch 7200
execute if score stmc.handler event.stage matches 10 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 12 run scoreboard players set lobby.handler lobby.timer.switch 1800
execute if score stmc.handler event.stage matches 14 run scoreboard players set lobby.handler lobby.timer.switch 1200

scoreboard objectives remove lobby.sidebar