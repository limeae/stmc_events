# this function runs whenever attempting to start the trials game
# the function will set the next game to trials
# then will increment the current event stage

# set next game to trials
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 2
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 2
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 2
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 2
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 2
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 2
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 2
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 2

# increment stage
scoreboard players add stmc.handler event.stage 1

# run trials load function
function trials:load