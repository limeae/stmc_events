# this function runs whenever attempting to start the extract game
# the function will set the next game to extract
# then will increment the current event stage

# set next game to extract
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 5
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 5
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 5
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 5
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 5
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 5
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 5
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 5

# increment stage
scoreboard players add stmc.handler event.stage 1

# run extract load function
function extract:load