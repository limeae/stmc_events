# this function runs whenever attempting to start the brawl game
# the function will set the next game to brawl
# then will increment the current event stage

# set next game to brawl
execute if score stmc.handler event.stage matches 0 run scoreboard players set stmc.handler stats.game1 7
execute if score stmc.handler event.stage matches 2 run scoreboard players set stmc.handler stats.game2 7
execute if score stmc.handler event.stage matches 4 run scoreboard players set stmc.handler stats.game3 7
execute if score stmc.handler event.stage matches 6 run scoreboard players set stmc.handler stats.game4 7
execute if score stmc.handler event.stage matches 8 run scoreboard players set stmc.handler stats.game5 7
execute if score stmc.handler event.stage matches 10 run scoreboard players set stmc.handler stats.game6 7
execute if score stmc.handler event.stage matches 12 run scoreboard players set stmc.handler stats.game7 7
execute if score stmc.handler event.stage matches 14 run scoreboard players set stmc.handler stats.game8 7

# increment stage
scoreboard players add stmc.handler event.stage 1

# run brawl load function
function survival_games:load