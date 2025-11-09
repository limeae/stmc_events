# this function runs whenever attempting to start the race game
# the function will set the next game to race
# then will increment the current event stage

# set next game to race
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 0
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 0
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 0
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 0
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 0
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 0
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 0
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 0

# increment stage
scoreboard players add stmc.handler event.stage 1

# run race load function
function race:load