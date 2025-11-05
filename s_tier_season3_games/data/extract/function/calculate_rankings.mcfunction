# support function that ranks teams & players based on scores
# stores these rankings either in extract.points.team.rank or extract.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add extract.points.team.temp dummy
scoreboard players operation extract.RedRaccoons extract.points.team.temp = extract.RedRaccoons extract.points.team
scoreboard players operation extract.OrangeOtters extract.points.team.temp = extract.OrangeOtters extract.points.team
scoreboard players operation extract.PinkPikas extract.points.team.temp = extract.PinkPikas extract.points.team
scoreboard players operation extract.YellowYaks extract.points.team.temp = extract.YellowYaks extract.points.team
scoreboard players operation extract.GreenGoats extract.points.team.temp = extract.GreenGoats extract.points.team
scoreboard players operation extract.CyanCougars extract.points.team.temp = extract.CyanCougars extract.points.team
scoreboard players operation extract.PurplePenguins extract.points.team.temp = extract.PurplePenguins extract.points.team
scoreboard players operation extract.BlueBears extract.points.team.temp = extract.BlueBears extract.points.team

# then reset ranks
scoreboard players set extract.RedRaccoons extract.points.team.rank -1
scoreboard players set extract.OrangeOtters extract.points.team.rank -1
scoreboard players set extract.PinkPikas extract.points.team.rank -1
scoreboard players set extract.YellowYaks extract.points.team.rank -1
scoreboard players set extract.GreenGoats extract.points.team.rank -1
scoreboard players set extract.CyanCougars extract.points.team.rank -1
scoreboard players set extract.PurplePenguins extract.points.team.rank -1
scoreboard players set extract.BlueBears extract.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest extract.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score extract.RedRaccoons extract.points.team.rank matches 1.. if score extract.RedRaccoons extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp
execute unless score extract.OrangeOtters extract.points.team.rank matches 1.. if score extract.OrangeOtters extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp
execute unless score extract.PinkPikas extract.points.team.rank matches 1.. if score extract.PinkPikas extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp
execute unless score extract.YellowYaks extract.points.team.rank matches 1.. if score extract.YellowYaks extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp
execute unless score extract.GreenGoats extract.points.team.rank matches 1.. if score extract.GreenGoats extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp
execute unless score extract.CyanCougars extract.points.team.rank matches 1.. if score extract.CyanCougars extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp
execute unless score extract.PurplePenguins extract.points.team.rank matches 1.. if score extract.PurplePenguins extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp
execute unless score extract.BlueBears extract.points.team.rank matches 1.. if score extract.BlueBears extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp run scoreboard players set extract.RedRaccoons extract.points.team.rank 1
execute if score $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp run scoreboard players set extract.OrangeOtters extract.points.team.rank 1
execute if score $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp run scoreboard players set extract.PinkPikas extract.points.team.rank 1
execute if score $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp run scoreboard players set extract.YellowYaks extract.points.team.rank 1
execute if score $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp run scoreboard players set extract.GreenGoats extract.points.team.rank 1
execute if score $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp run scoreboard players set extract.CyanCougars extract.points.team.rank 1
execute if score $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp run scoreboard players set extract.PurplePenguins extract.points.team.rank 1
execute if score $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp run scoreboard players set extract.BlueBears extract.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest extract.points.team.temp -1
execute unless score extract.RedRaccoons extract.points.team.rank matches 1.. if score extract.RedRaccoons extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp
execute unless score extract.OrangeOtters extract.points.team.rank matches 1.. if score extract.OrangeOtters extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp
execute unless score extract.PinkPikas extract.points.team.rank matches 1.. if score extract.PinkPikas extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp
execute unless score extract.YellowYaks extract.points.team.rank matches 1.. if score extract.YellowYaks extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp
execute unless score extract.GreenGoats extract.points.team.rank matches 1.. if score extract.GreenGoats extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp
execute unless score extract.CyanCougars extract.points.team.rank matches 1.. if score extract.CyanCougars extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp
execute unless score extract.PurplePenguins extract.points.team.rank matches 1.. if score extract.PurplePenguins extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp
execute unless score extract.BlueBears extract.points.team.rank matches 1.. if score extract.BlueBears extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp
execute if score $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp run scoreboard players set extract.RedRaccoons extract.points.team.rank 2
execute if score $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp run scoreboard players set extract.OrangeOtters extract.points.team.rank 2
execute if score $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp run scoreboard players set extract.PinkPikas extract.points.team.rank 2
execute if score $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp run scoreboard players set extract.YellowYaks extract.points.team.rank 2
execute if score $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp run scoreboard players set extract.GreenGoats extract.points.team.rank 2
execute if score $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp run scoreboard players set extract.CyanCougars extract.points.team.rank 2
execute if score $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp run scoreboard players set extract.PurplePenguins extract.points.team.rank 2
execute if score $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp run scoreboard players set extract.BlueBears extract.points.team.rank 2

scoreboard players set $stmc.highest extract.points.team.temp -1
execute unless score extract.RedRaccoons extract.points.team.rank matches 1.. if score extract.RedRaccoons extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp
execute unless score extract.OrangeOtters extract.points.team.rank matches 1.. if score extract.OrangeOtters extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp
execute unless score extract.PinkPikas extract.points.team.rank matches 1.. if score extract.PinkPikas extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp
execute unless score extract.YellowYaks extract.points.team.rank matches 1.. if score extract.YellowYaks extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp
execute unless score extract.GreenGoats extract.points.team.rank matches 1.. if score extract.GreenGoats extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp
execute unless score extract.CyanCougars extract.points.team.rank matches 1.. if score extract.CyanCougars extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp
execute unless score extract.PurplePenguins extract.points.team.rank matches 1.. if score extract.PurplePenguins extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp
execute unless score extract.BlueBears extract.points.team.rank matches 1.. if score extract.BlueBears extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp
execute if score $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp run scoreboard players set extract.RedRaccoons extract.points.team.rank 3
execute if score $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp run scoreboard players set extract.OrangeOtters extract.points.team.rank 3
execute if score $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp run scoreboard players set extract.PinkPikas extract.points.team.rank 3
execute if score $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp run scoreboard players set extract.YellowYaks extract.points.team.rank 3
execute if score $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp run scoreboard players set extract.GreenGoats extract.points.team.rank 3
execute if score $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp run scoreboard players set extract.CyanCougars extract.points.team.rank 3
execute if score $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp run scoreboard players set extract.PurplePenguins extract.points.team.rank 3
execute if score $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp run scoreboard players set extract.BlueBears extract.points.team.rank 3

scoreboard players set $stmc.highest extract.points.team.temp -1
execute unless score extract.RedRaccoons extract.points.team.rank matches 1.. if score extract.RedRaccoons extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp
execute unless score extract.OrangeOtters extract.points.team.rank matches 1.. if score extract.OrangeOtters extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp
execute unless score extract.PinkPikas extract.points.team.rank matches 1.. if score extract.PinkPikas extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp
execute unless score extract.YellowYaks extract.points.team.rank matches 1.. if score extract.YellowYaks extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp
execute unless score extract.GreenGoats extract.points.team.rank matches 1.. if score extract.GreenGoats extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp
execute unless score extract.CyanCougars extract.points.team.rank matches 1.. if score extract.CyanCougars extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp
execute unless score extract.PurplePenguins extract.points.team.rank matches 1.. if score extract.PurplePenguins extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp
execute unless score extract.BlueBears extract.points.team.rank matches 1.. if score extract.BlueBears extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp
execute if score $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp run scoreboard players set extract.RedRaccoons extract.points.team.rank 4
execute if score $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp run scoreboard players set extract.OrangeOtters extract.points.team.rank 4
execute if score $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp run scoreboard players set extract.PinkPikas extract.points.team.rank 4
execute if score $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp run scoreboard players set extract.YellowYaks extract.points.team.rank 4
execute if score $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp run scoreboard players set extract.GreenGoats extract.points.team.rank 4
execute if score $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp run scoreboard players set extract.CyanCougars extract.points.team.rank 4
execute if score $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp run scoreboard players set extract.PurplePenguins extract.points.team.rank 4
execute if score $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp run scoreboard players set extract.BlueBears extract.points.team.rank 4

scoreboard players set $stmc.highest extract.points.team.temp -1
execute unless score extract.RedRaccoons extract.points.team.rank matches 1.. if score extract.RedRaccoons extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp
execute unless score extract.OrangeOtters extract.points.team.rank matches 1.. if score extract.OrangeOtters extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp
execute unless score extract.PinkPikas extract.points.team.rank matches 1.. if score extract.PinkPikas extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp
execute unless score extract.YellowYaks extract.points.team.rank matches 1.. if score extract.YellowYaks extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp
execute unless score extract.GreenGoats extract.points.team.rank matches 1.. if score extract.GreenGoats extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp
execute unless score extract.CyanCougars extract.points.team.rank matches 1.. if score extract.CyanCougars extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp
execute unless score extract.PurplePenguins extract.points.team.rank matches 1.. if score extract.PurplePenguins extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp
execute unless score extract.BlueBears extract.points.team.rank matches 1.. if score extract.BlueBears extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp
execute if score $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp run scoreboard players set extract.RedRaccoons extract.points.team.rank 5
execute if score $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp run scoreboard players set extract.OrangeOtters extract.points.team.rank 5
execute if score $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp run scoreboard players set extract.PinkPikas extract.points.team.rank 5
execute if score $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp run scoreboard players set extract.YellowYaks extract.points.team.rank 5
execute if score $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp run scoreboard players set extract.GreenGoats extract.points.team.rank 5
execute if score $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp run scoreboard players set extract.CyanCougars extract.points.team.rank 5
execute if score $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp run scoreboard players set extract.PurplePenguins extract.points.team.rank 5
execute if score $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp run scoreboard players set extract.BlueBears extract.points.team.rank 5

scoreboard players set $stmc.highest extract.points.team.temp -1
execute unless score extract.RedRaccoons extract.points.team.rank matches 1.. if score extract.RedRaccoons extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp
execute unless score extract.OrangeOtters extract.points.team.rank matches 1.. if score extract.OrangeOtters extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp
execute unless score extract.PinkPikas extract.points.team.rank matches 1.. if score extract.PinkPikas extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp
execute unless score extract.YellowYaks extract.points.team.rank matches 1.. if score extract.YellowYaks extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp
execute unless score extract.GreenGoats extract.points.team.rank matches 1.. if score extract.GreenGoats extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp
execute unless score extract.CyanCougars extract.points.team.rank matches 1.. if score extract.CyanCougars extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp
execute unless score extract.PurplePenguins extract.points.team.rank matches 1.. if score extract.PurplePenguins extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp
execute unless score extract.BlueBears extract.points.team.rank matches 1.. if score extract.BlueBears extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp
execute if score $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp run scoreboard players set extract.RedRaccoons extract.points.team.rank 6
execute if score $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp run scoreboard players set extract.OrangeOtters extract.points.team.rank 6
execute if score $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp run scoreboard players set extract.PinkPikas extract.points.team.rank 6
execute if score $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp run scoreboard players set extract.YellowYaks extract.points.team.rank 6
execute if score $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp run scoreboard players set extract.GreenGoats extract.points.team.rank 6
execute if score $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp run scoreboard players set extract.CyanCougars extract.points.team.rank 6
execute if score $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp run scoreboard players set extract.PurplePenguins extract.points.team.rank 6
execute if score $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp run scoreboard players set extract.BlueBears extract.points.team.rank 6

scoreboard players set $stmc.highest extract.points.team.temp -1
execute unless score extract.RedRaccoons extract.points.team.rank matches 1.. if score extract.RedRaccoons extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp
execute unless score extract.OrangeOtters extract.points.team.rank matches 1.. if score extract.OrangeOtters extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp
execute unless score extract.PinkPikas extract.points.team.rank matches 1.. if score extract.PinkPikas extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp
execute unless score extract.YellowYaks extract.points.team.rank matches 1.. if score extract.YellowYaks extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp
execute unless score extract.GreenGoats extract.points.team.rank matches 1.. if score extract.GreenGoats extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp
execute unless score extract.CyanCougars extract.points.team.rank matches 1.. if score extract.CyanCougars extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp
execute unless score extract.PurplePenguins extract.points.team.rank matches 1.. if score extract.PurplePenguins extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp
execute unless score extract.BlueBears extract.points.team.rank matches 1.. if score extract.BlueBears extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp
execute if score $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp run scoreboard players set extract.RedRaccoons extract.points.team.rank 7
execute if score $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp run scoreboard players set extract.OrangeOtters extract.points.team.rank 7
execute if score $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp run scoreboard players set extract.PinkPikas extract.points.team.rank 7
execute if score $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp run scoreboard players set extract.YellowYaks extract.points.team.rank 7
execute if score $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp run scoreboard players set extract.GreenGoats extract.points.team.rank 7
execute if score $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp run scoreboard players set extract.CyanCougars extract.points.team.rank 7
execute if score $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp run scoreboard players set extract.PurplePenguins extract.points.team.rank 7
execute if score $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp run scoreboard players set extract.BlueBears extract.points.team.rank 7

scoreboard players set $stmc.highest extract.points.team.temp -1
execute unless score extract.RedRaccoons extract.points.team.rank matches 1.. if score extract.RedRaccoons extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp
execute unless score extract.OrangeOtters extract.points.team.rank matches 1.. if score extract.OrangeOtters extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp
execute unless score extract.PinkPikas extract.points.team.rank matches 1.. if score extract.PinkPikas extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp
execute unless score extract.YellowYaks extract.points.team.rank matches 1.. if score extract.YellowYaks extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp
execute unless score extract.GreenGoats extract.points.team.rank matches 1.. if score extract.GreenGoats extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp
execute unless score extract.CyanCougars extract.points.team.rank matches 1.. if score extract.CyanCougars extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp
execute unless score extract.PurplePenguins extract.points.team.rank matches 1.. if score extract.PurplePenguins extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp
execute unless score extract.BlueBears extract.points.team.rank matches 1.. if score extract.BlueBears extract.points.team.temp > $stmc.highest extract.points.team.temp run scoreboard players operation $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp
execute if score $stmc.highest extract.points.team.temp = extract.RedRaccoons extract.points.team.temp run scoreboard players set extract.RedRaccoons extract.points.team.rank 8
execute if score $stmc.highest extract.points.team.temp = extract.OrangeOtters extract.points.team.temp run scoreboard players set extract.OrangeOtters extract.points.team.rank 8
execute if score $stmc.highest extract.points.team.temp = extract.PinkPikas extract.points.team.temp run scoreboard players set extract.PinkPikas extract.points.team.rank 8
execute if score $stmc.highest extract.points.team.temp = extract.YellowYaks extract.points.team.temp run scoreboard players set extract.YellowYaks extract.points.team.rank 8
execute if score $stmc.highest extract.points.team.temp = extract.GreenGoats extract.points.team.temp run scoreboard players set extract.GreenGoats extract.points.team.rank 8
execute if score $stmc.highest extract.points.team.temp = extract.CyanCougars extract.points.team.temp run scoreboard players set extract.CyanCougars extract.points.team.rank 8
execute if score $stmc.highest extract.points.team.temp = extract.PurplePenguins extract.points.team.temp run scoreboard players set extract.PurplePenguins extract.points.team.rank 8
execute if score $stmc.highest extract.points.team.temp = extract.BlueBears extract.points.team.temp run scoreboard players set extract.BlueBears extract.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add extract.points.indiv.temp dummy
execute as @a run scoreboard players operation @s extract.points.indiv.temp = @s extract.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s extract.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $extract.highest extract.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s extract.points.indiv.rank matches 1 run scoreboard players reset @s extract.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 2
execute as @a if score @s extract.points.indiv.rank matches 2 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 3
execute as @a if score @s extract.points.indiv.rank matches 3 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 4
execute as @a if score @s extract.points.indiv.rank matches 4 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 5
execute as @a if score @s extract.points.indiv.rank matches 5 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 6
execute as @a if score @s extract.points.indiv.rank matches 6 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 7
execute as @a if score @s extract.points.indiv.rank matches 7 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 8
execute as @a if score @s extract.points.indiv.rank matches 8 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 9
execute as @a if score @s extract.points.indiv.rank matches 9 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 10
execute as @a if score @s extract.points.indiv.rank matches 10 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 11
execute as @a if score @s extract.points.indiv.rank matches 11 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 12
execute as @a if score @s extract.points.indiv.rank matches 12 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 13
execute as @a if score @s extract.points.indiv.rank matches 13 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 14
execute as @a if score @s extract.points.indiv.rank matches 14 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 15
execute as @a if score @s extract.points.indiv.rank matches 15 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 16
execute as @a if score @s extract.points.indiv.rank matches 16 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 17
execute as @a if score @s extract.points.indiv.rank matches 17 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 18
execute as @a if score @s extract.points.indiv.rank matches 18 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 19
execute as @a if score @s extract.points.indiv.rank matches 19 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 20
execute as @a if score @s extract.points.indiv.rank matches 20 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 21
execute as @a if score @s extract.points.indiv.rank matches 21 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 22
execute as @a if score @s extract.points.indiv.rank matches 22 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 23
execute as @a if score @s extract.points.indiv.rank matches 23 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 24 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 25 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 26 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 27 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 28 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 29 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 30 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 31 run scoreboard players reset @s extract.points.indiv.temp

scoreboard players set $extract.highest extract.points.indiv.temp -1
execute as @a run scoreboard players operation $extract.highest extract.points.indiv.temp > @s extract.points.indiv.temp
execute as @a if score @s extract.points.indiv.temp = $extract.highest extract.points.indiv.temp unless score @s extract.points.indiv.rank matches 0.. run scoreboard players set @s extract.points.indiv.rank 24
execute as @a if score @s extract.points.indiv.rank matches 32 run scoreboard players reset @s extract.points.indiv.temp