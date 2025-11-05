# tick function for race

# stages:
# 0- delay1 (waiting for players)
# 1- explanation
# 2- delay2
# 3- game
# 4- delay4 (reset & point announcement)

# run functions every tick
execute if score extract.handler extract.stage matches 3..4 run function extract:points_update
function extract:sidebar

# determine players on a team
scoreboard players set extract.RedRaccoons extract.players 0
execute as @a[team=RED_RACCOONS] run scoreboard players add extract.RedRaccoons extract.players 1
scoreboard players set extract.OrangeOtters extract.players 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players add extract.OrangeOtters extract.players 1
scoreboard players set extract.PinkPikas extract.players 0
execute as @a[team=PINK_PIKAS] run scoreboard players add extract.PinkPikas extract.players 1
scoreboard players set extract.GreenGoats extract.players 0
execute as @a[team=GREEN_GOATS] run scoreboard players add extract.GreenGoats extract.players 1
scoreboard players set extract.CyanCougars extract.players 0
execute as @a[team=CYAN_COUGARS] run scoreboard players add extract.CyanCougars extract.players 1
scoreboard players set extract.PurplePenguins extract.players 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players add extract.PurplePenguins extract.players 1

# if we're in stage 0, increment timer
execute if score extract.handler extract.stage matches 0 run scoreboard players add extract.handler extract.timer.delay1 1
execute if score extract.handler extract.stage matches 0 if score extract.handler extract.timer.delay1 matches 400.. run scoreboard players set extract.handler extract.stage 1

# if we're in stage 1, increment timer & run explanation
execute if score extract.handler extract.stage matches 1 run scoreboard players add extract.handler extract.timer.explanation 1
execute if score extract.handler extract.stage matches 1 run function extract:explanation
execute if score extract.handler extract.stage matches 1 if score extract.handler extract.timer.explanation matches 800.. run scoreboard players set extract.handler extract.stage 2

# if we're in stage 2, increment timer & countdown at 5 seconds
execute if score extract.handler extract.stage matches 2 run scoreboard players add extract.handler extract.timer.delay2 1
# countdown
execute if score extract.handler extract.stage matches 2 if score extract.handler extract.timer.delay2 matches 300 run title @a actionbar {"text":"5 seconds!", "color":"red"}
execute if score extract.handler extract.stage matches 2 if score extract.handler extract.timer.delay2 matches 320 run title @a actionbar {"text":"4 seconds!", "color":"red"}
execute if score extract.handler extract.stage matches 2 if score extract.handler extract.timer.delay2 matches 340 run title @a actionbar {"text":"3 seconds!", "color":"red"}
execute if score extract.handler extract.stage matches 2 if score extract.handler extract.timer.delay2 matches 360 run title @a actionbar {"text":"2 seconds!", "color":"red"}
execute if score extract.handler extract.stage matches 2 if score extract.handler extract.timer.delay2 matches 380 run title @a actionbar {"text":"1 second!", "color":"red"}

execute if score extract.handler extract.stage matches 2 if score extract.handler extract.timer.delay2 matches 400.. run scoreboard players set extract.handler extract.stage 3

# if we're in stage 3, increment timer & run game
execute if score extract.handler extract.stage matches 3 run scoreboard players add extract.handler extract.timer.game 1
execute if score extract.handler extract.stage matches 3 run function extract:game_tick

# if we're in stage 4, run reset & point announcement
execute if score extract.handler extract.stage matches 4 run scoreboard players add extract.handler extract.timer.delay3 1
execute if score extract.handler extract.stage matches 4 run function extract:points_announcement
execute if score extract.handler extract.stage matches 4 if score extract.handler extract.timer.delay3 matches 800.. run function extract:reset