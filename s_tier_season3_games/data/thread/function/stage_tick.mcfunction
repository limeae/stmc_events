# function to determine which subthread to run
# all even stages run a lobby thread
# all odd stages run a game thread

# <===== STAGE ZERO =====>
# lobby stage

execute if score stmc.handler event.stage matches 0 run function lobby:between/tick

# <===== STAGE ONE =====>
# game stage

execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 7 run function survival_games:tick