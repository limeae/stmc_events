# game tick function for extract [EXTRACT]

# this function will run each round individually

# <===== GLOBAL STUFF =====>

# forceload necessary chunks
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 5 run forceload add 350 75 -20 0

# check for deaths
function extract:death_handler

# <===== ROUND 1 =====>

execute if score extract.handler extract.stats.roundsCompleted matches 0 run function extract:round/round1_tick

# <===== ROUND 2 =====>

execute if score extract.handler extract.stats.roundsCompleted matches 1 run function extract:round/round2_tick

# <===== ROUND 3 =====>

execute if score extract.handler extract.stats.roundsCompleted matches 2 run function extract:round/round3_tick

# <===== ROUND 4 =====>

execute if score extract.handler extract.stats.roundsCompleted matches 3 run function extract:round/round4_tick

# <===== ROUND 5 =====>

execute if score extract.handler extract.stats.roundsCompleted matches 4 run function extract:round/round5_tick

# <===== ROUND 6 =====>

execute if score extract.handler extract.stats.roundsCompleted matches 5 run function extract:round/round6_tick

# <===== ROUND 7 =====>

execute if score extract.handler extract.stats.roundsCompleted matches 6 run function extract:round/round7_tick

# <===== END GAME =====>

execute if score extract.handler extract.stats.roundsCompleted matches 7 run scoreboard players set extract.handler extract.stage 4

