# support function that ranks teams & players based on scores
# stores these rankings either in stats.points.team.rank or stats.points.indiv.rank

# <===== TEAM RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add stats.points.team.temp dummy
scoreboard players operation team.RedRaccoons stats.points.team.temp = team.RedRaccoons stats.points.team
scoreboard players operation team.OrangeOtters stats.points.team.temp = team.OrangeOtters stats.points.team
scoreboard players operation team.PinkPikas stats.points.team.temp = team.PinkPikas stats.points.team
scoreboard players operation team.YellowYaks stats.points.team.temp = team.YellowYaks stats.points.team
scoreboard players operation team.GreenGoats stats.points.team.temp = team.GreenGoats stats.points.team
scoreboard players operation team.CyanCougars stats.points.team.temp = team.CyanCougars stats.points.team
scoreboard players operation team.PurplePenguins stats.points.team.temp = team.PurplePenguins stats.points.team
scoreboard players operation team.BlueBears stats.points.team.temp = team.BlueBears stats.points.team

# then reset ranks
scoreboard players set team.RedRaccoons stats.points.team.rank -1
scoreboard players set team.OrangeOtters stats.points.team.rank -1
scoreboard players set team.PinkPikas stats.points.team.rank -1
scoreboard players set team.YellowYaks stats.points.team.rank -1
scoreboard players set team.GreenGoats stats.points.team.rank -1
scoreboard players set team.CyanCougars stats.points.team.rank -1
scoreboard players set team.PurplePenguins stats.points.team.rank -1
scoreboard players set team.BlueBears stats.points.team.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest stats.points.team.temp -1

# then determine the highest value of teams without a rank
execute unless score team.RedRaccoons stats.points.team.rank matches 1.. if score team.RedRaccoons stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp
execute unless score team.OrangeOtters stats.points.team.rank matches 1.. if score team.OrangeOtters stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp
execute unless score team.PinkPikas stats.points.team.rank matches 1.. if score team.PinkPikas stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp
execute unless score team.YellowYaks stats.points.team.rank matches 1.. if score team.YellowYaks stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp
execute unless score team.GreenGoats stats.points.team.rank matches 1.. if score team.GreenGoats stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp
execute unless score team.CyanCougars stats.points.team.rank matches 1.. if score team.CyanCougars stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp
execute unless score team.PurplePenguins stats.points.team.rank matches 1.. if score team.PurplePenguins stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp
execute unless score team.BlueBears stats.points.team.rank matches 1.. if score team.BlueBears stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp

# then determine which team has that exact value & give them the highest rank applicable
execute if score $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp run scoreboard players set team.RedRaccoons stats.points.team.rank 1
execute if score $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp run scoreboard players set team.OrangeOtters stats.points.team.rank 1
execute if score $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp run scoreboard players set team.PinkPikas stats.points.team.rank 1
execute if score $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp run scoreboard players set team.YellowYaks stats.points.team.rank 1
execute if score $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp run scoreboard players set team.GreenGoats stats.points.team.rank 1
execute if score $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp run scoreboard players set team.CyanCougars stats.points.team.rank 1
execute if score $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp run scoreboard players set team.PurplePenguins stats.points.team.rank 1
execute if score $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp run scoreboard players set team.BlueBears stats.points.team.rank 1

# and then repeat the process until all teams have been ranked
scoreboard players set $stmc.highest stats.points.team.temp -1
execute unless score team.RedRaccoons stats.points.team.rank matches 1.. if score team.RedRaccoons stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp
execute unless score team.OrangeOtters stats.points.team.rank matches 1.. if score team.OrangeOtters stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp
execute unless score team.PinkPikas stats.points.team.rank matches 1.. if score team.PinkPikas stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp
execute unless score team.YellowYaks stats.points.team.rank matches 1.. if score team.YellowYaks stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp
execute unless score team.GreenGoats stats.points.team.rank matches 1.. if score team.GreenGoats stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp
execute unless score team.CyanCougars stats.points.team.rank matches 1.. if score team.CyanCougars stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp
execute unless score team.PurplePenguins stats.points.team.rank matches 1.. if score team.PurplePenguins stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp
execute unless score team.BlueBears stats.points.team.rank matches 1.. if score team.BlueBears stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp
execute if score $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp run scoreboard players set team.RedRaccoons stats.points.team.rank 2
execute if score $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp run scoreboard players set team.OrangeOtters stats.points.team.rank 2
execute if score $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp run scoreboard players set team.PinkPikas stats.points.team.rank 2
execute if score $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp run scoreboard players set team.YellowYaks stats.points.team.rank 2
execute if score $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp run scoreboard players set team.GreenGoats stats.points.team.rank 2
execute if score $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp run scoreboard players set team.CyanCougars stats.points.team.rank 2
execute if score $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp run scoreboard players set team.PurplePenguins stats.points.team.rank 2
execute if score $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp run scoreboard players set team.BlueBears stats.points.team.rank 2

scoreboard players set $stmc.highest stats.points.team.temp -1
execute unless score team.RedRaccoons stats.points.team.rank matches 1.. if score team.RedRaccoons stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp
execute unless score team.OrangeOtters stats.points.team.rank matches 1.. if score team.OrangeOtters stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp
execute unless score team.PinkPikas stats.points.team.rank matches 1.. if score team.PinkPikas stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp
execute unless score team.YellowYaks stats.points.team.rank matches 1.. if score team.YellowYaks stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp
execute unless score team.GreenGoats stats.points.team.rank matches 1.. if score team.GreenGoats stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp
execute unless score team.CyanCougars stats.points.team.rank matches 1.. if score team.CyanCougars stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp
execute unless score team.PurplePenguins stats.points.team.rank matches 1.. if score team.PurplePenguins stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp
execute unless score team.BlueBears stats.points.team.rank matches 1.. if score team.BlueBears stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp
execute if score $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp run scoreboard players set team.RedRaccoons stats.points.team.rank 3
execute if score $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp run scoreboard players set team.OrangeOtters stats.points.team.rank 3
execute if score $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp run scoreboard players set team.PinkPikas stats.points.team.rank 3
execute if score $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp run scoreboard players set team.YellowYaks stats.points.team.rank 3
execute if score $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp run scoreboard players set team.GreenGoats stats.points.team.rank 3
execute if score $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp run scoreboard players set team.CyanCougars stats.points.team.rank 3
execute if score $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp run scoreboard players set team.PurplePenguins stats.points.team.rank 3
execute if score $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp run scoreboard players set team.BlueBears stats.points.team.rank 3

scoreboard players set $stmc.highest stats.points.team.temp -1
execute unless score team.RedRaccoons stats.points.team.rank matches 1.. if score team.RedRaccoons stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp
execute unless score team.OrangeOtters stats.points.team.rank matches 1.. if score team.OrangeOtters stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp
execute unless score team.PinkPikas stats.points.team.rank matches 1.. if score team.PinkPikas stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp
execute unless score team.YellowYaks stats.points.team.rank matches 1.. if score team.YellowYaks stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp
execute unless score team.GreenGoats stats.points.team.rank matches 1.. if score team.GreenGoats stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp
execute unless score team.CyanCougars stats.points.team.rank matches 1.. if score team.CyanCougars stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp
execute unless score team.PurplePenguins stats.points.team.rank matches 1.. if score team.PurplePenguins stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp
execute unless score team.BlueBears stats.points.team.rank matches 1.. if score team.BlueBears stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp
execute if score $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp run scoreboard players set team.RedRaccoons stats.points.team.rank 4
execute if score $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp run scoreboard players set team.OrangeOtters stats.points.team.rank 4
execute if score $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp run scoreboard players set team.PinkPikas stats.points.team.rank 4
execute if score $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp run scoreboard players set team.YellowYaks stats.points.team.rank 4
execute if score $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp run scoreboard players set team.GreenGoats stats.points.team.rank 4
execute if score $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp run scoreboard players set team.CyanCougars stats.points.team.rank 4
execute if score $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp run scoreboard players set team.PurplePenguins stats.points.team.rank 4
execute if score $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp run scoreboard players set team.BlueBears stats.points.team.rank 4

scoreboard players set $stmc.highest stats.points.team.temp -1
execute unless score team.RedRaccoons stats.points.team.rank matches 1.. if score team.RedRaccoons stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp
execute unless score team.OrangeOtters stats.points.team.rank matches 1.. if score team.OrangeOtters stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp
execute unless score team.PinkPikas stats.points.team.rank matches 1.. if score team.PinkPikas stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp
execute unless score team.YellowYaks stats.points.team.rank matches 1.. if score team.YellowYaks stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp
execute unless score team.GreenGoats stats.points.team.rank matches 1.. if score team.GreenGoats stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp
execute unless score team.CyanCougars stats.points.team.rank matches 1.. if score team.CyanCougars stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp
execute unless score team.PurplePenguins stats.points.team.rank matches 1.. if score team.PurplePenguins stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp
execute unless score team.BlueBears stats.points.team.rank matches 1.. if score team.BlueBears stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp
execute if score $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp run scoreboard players set team.RedRaccoons stats.points.team.rank 5
execute if score $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp run scoreboard players set team.OrangeOtters stats.points.team.rank 5
execute if score $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp run scoreboard players set team.PinkPikas stats.points.team.rank 5
execute if score $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp run scoreboard players set team.YellowYaks stats.points.team.rank 5
execute if score $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp run scoreboard players set team.GreenGoats stats.points.team.rank 5
execute if score $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp run scoreboard players set team.CyanCougars stats.points.team.rank 5
execute if score $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp run scoreboard players set team.PurplePenguins stats.points.team.rank 5
execute if score $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp run scoreboard players set team.BlueBears stats.points.team.rank 5

scoreboard players set $stmc.highest stats.points.team.temp -1
execute unless score team.RedRaccoons stats.points.team.rank matches 1.. if score team.RedRaccoons stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp
execute unless score team.OrangeOtters stats.points.team.rank matches 1.. if score team.OrangeOtters stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp
execute unless score team.PinkPikas stats.points.team.rank matches 1.. if score team.PinkPikas stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp
execute unless score team.YellowYaks stats.points.team.rank matches 1.. if score team.YellowYaks stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp
execute unless score team.GreenGoats stats.points.team.rank matches 1.. if score team.GreenGoats stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp
execute unless score team.CyanCougars stats.points.team.rank matches 1.. if score team.CyanCougars stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp
execute unless score team.PurplePenguins stats.points.team.rank matches 1.. if score team.PurplePenguins stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp
execute unless score team.BlueBears stats.points.team.rank matches 1.. if score team.BlueBears stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp
execute if score $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp run scoreboard players set team.RedRaccoons stats.points.team.rank 6
execute if score $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp run scoreboard players set team.OrangeOtters stats.points.team.rank 6
execute if score $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp run scoreboard players set team.PinkPikas stats.points.team.rank 6
execute if score $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp run scoreboard players set team.YellowYaks stats.points.team.rank 6
execute if score $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp run scoreboard players set team.GreenGoats stats.points.team.rank 6
execute if score $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp run scoreboard players set team.CyanCougars stats.points.team.rank 6
execute if score $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp run scoreboard players set team.PurplePenguins stats.points.team.rank 6
execute if score $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp run scoreboard players set team.BlueBears stats.points.team.rank 6

scoreboard players set $stmc.highest stats.points.team.temp -1
execute unless score team.RedRaccoons stats.points.team.rank matches 1.. if score team.RedRaccoons stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp
execute unless score team.OrangeOtters stats.points.team.rank matches 1.. if score team.OrangeOtters stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp
execute unless score team.PinkPikas stats.points.team.rank matches 1.. if score team.PinkPikas stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp
execute unless score team.YellowYaks stats.points.team.rank matches 1.. if score team.YellowYaks stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp
execute unless score team.GreenGoats stats.points.team.rank matches 1.. if score team.GreenGoats stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp
execute unless score team.CyanCougars stats.points.team.rank matches 1.. if score team.CyanCougars stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp
execute unless score team.PurplePenguins stats.points.team.rank matches 1.. if score team.PurplePenguins stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp
execute unless score team.BlueBears stats.points.team.rank matches 1.. if score team.BlueBears stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp
execute if score $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp run scoreboard players set team.RedRaccoons stats.points.team.rank 7
execute if score $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp run scoreboard players set team.OrangeOtters stats.points.team.rank 7
execute if score $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp run scoreboard players set team.PinkPikas stats.points.team.rank 7
execute if score $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp run scoreboard players set team.YellowYaks stats.points.team.rank 7
execute if score $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp run scoreboard players set team.GreenGoats stats.points.team.rank 7
execute if score $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp run scoreboard players set team.CyanCougars stats.points.team.rank 7
execute if score $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp run scoreboard players set team.PurplePenguins stats.points.team.rank 7
execute if score $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp run scoreboard players set team.BlueBears stats.points.team.rank 7

scoreboard players set $stmc.highest stats.points.team.temp -1
execute unless score team.RedRaccoons stats.points.team.rank matches 1.. if score team.RedRaccoons stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp
execute unless score team.OrangeOtters stats.points.team.rank matches 1.. if score team.OrangeOtters stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp
execute unless score team.PinkPikas stats.points.team.rank matches 1.. if score team.PinkPikas stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp
execute unless score team.YellowYaks stats.points.team.rank matches 1.. if score team.YellowYaks stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp
execute unless score team.GreenGoats stats.points.team.rank matches 1.. if score team.GreenGoats stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp
execute unless score team.CyanCougars stats.points.team.rank matches 1.. if score team.CyanCougars stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp
execute unless score team.PurplePenguins stats.points.team.rank matches 1.. if score team.PurplePenguins stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp
execute unless score team.BlueBears stats.points.team.rank matches 1.. if score team.BlueBears stats.points.team.temp > $stmc.highest stats.points.team.temp run scoreboard players operation $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp
execute if score $stmc.highest stats.points.team.temp = team.RedRaccoons stats.points.team.temp run scoreboard players set team.RedRaccoons stats.points.team.rank 8
execute if score $stmc.highest stats.points.team.temp = team.OrangeOtters stats.points.team.temp run scoreboard players set team.OrangeOtters stats.points.team.rank 8
execute if score $stmc.highest stats.points.team.temp = team.PinkPikas stats.points.team.temp run scoreboard players set team.PinkPikas stats.points.team.rank 8
execute if score $stmc.highest stats.points.team.temp = team.YellowYaks stats.points.team.temp run scoreboard players set team.YellowYaks stats.points.team.rank 8
execute if score $stmc.highest stats.points.team.temp = team.GreenGoats stats.points.team.temp run scoreboard players set team.GreenGoats stats.points.team.rank 8
execute if score $stmc.highest stats.points.team.temp = team.CyanCougars stats.points.team.temp run scoreboard players set team.CyanCougars stats.points.team.rank 8
execute if score $stmc.highest stats.points.team.temp = team.PurplePenguins stats.points.team.temp run scoreboard players set team.PurplePenguins stats.points.team.rank 8
execute if score $stmc.highest stats.points.team.temp = team.BlueBears stats.points.team.temp run scoreboard players set team.BlueBears stats.points.team.rank 8

# <===== INDIVIDUAL RANKINGS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add stats.points.indiv.temp dummy
execute as @a run scoreboard players operation @s stats.points.indiv.temp = @s stats.points.indiv

# and reset our rankings
execute as @a run scoreboard players set @s stats.points.indiv.rank -1

# set our highest value to -1
scoreboard players set $stmc.highest stats.points.indiv.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s stats.points.indiv.rank matches 1 run scoreboard players reset @s stats.points.indiv.temp

# and then repeat the process until all players have been ranked
scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 2
execute as @a if score @s stats.points.indiv.rank matches 2 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 3
execute as @a if score @s stats.points.indiv.rank matches 3 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 4
execute as @a if score @s stats.points.indiv.rank matches 4 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 5
execute as @a if score @s stats.points.indiv.rank matches 5 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 6
execute as @a if score @s stats.points.indiv.rank matches 6 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 7
execute as @a if score @s stats.points.indiv.rank matches 7 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 8
execute as @a if score @s stats.points.indiv.rank matches 8 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 9
execute as @a if score @s stats.points.indiv.rank matches 9 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 10
execute as @a if score @s stats.points.indiv.rank matches 10 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 11
execute as @a if score @s stats.points.indiv.rank matches 11 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 12
execute as @a if score @s stats.points.indiv.rank matches 12 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 13
execute as @a if score @s stats.points.indiv.rank matches 13 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 14
execute as @a if score @s stats.points.indiv.rank matches 14 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 15
execute as @a if score @s stats.points.indiv.rank matches 15 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 16
execute as @a if score @s stats.points.indiv.rank matches 16 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 17
execute as @a if score @s stats.points.indiv.rank matches 17 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 18
execute as @a if score @s stats.points.indiv.rank matches 18 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 19
execute as @a if score @s stats.points.indiv.rank matches 19 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 20
execute as @a if score @s stats.points.indiv.rank matches 20 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 21
execute as @a if score @s stats.points.indiv.rank matches 21 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 22
execute as @a if score @s stats.points.indiv.rank matches 22 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 23
execute as @a if score @s stats.points.indiv.rank matches 23 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 24
execute as @a if score @s stats.points.indiv.rank matches 24 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 25
execute as @a if score @s stats.points.indiv.rank matches 25 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 26
execute as @a if score @s stats.points.indiv.rank matches 26 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 27
execute as @a if score @s stats.points.indiv.rank matches 27 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 28
execute as @a if score @s stats.points.indiv.rank matches 28 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 29
execute as @a if score @s stats.points.indiv.rank matches 29 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 30
execute as @a if score @s stats.points.indiv.rank matches 30 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 31
execute as @a if score @s stats.points.indiv.rank matches 31 run scoreboard players reset @s stats.points.indiv.temp

scoreboard players set $stmc.highest stats.points.indiv.temp -1
execute as @a run scoreboard players operation $stmc.highest stats.points.indiv.temp > @s stats.points.indiv.temp
execute as @a if score @s stats.points.indiv.temp = $stmc.highest stats.points.indiv.temp unless score @s stats.points.indiv.rank matches 0.. run scoreboard players set @s stats.points.indiv.rank 32
execute as @a if score @s stats.points.indiv.rank matches 32 run scoreboard players reset @s stats.points.indiv.temp