# Announces points for race

# 1) Kills
# 2) Individual points
# 3) Team points

# calculate rankings

function extract:calculate_rankings

# <===== KILLS CALCULATIONS =====>

# first, store our data in a temporary place to work with
scoreboard objectives add extract.stats.kills.temp dummy
execute as @a run scoreboard players operation @s extract.stats.kills.temp = @s extract.stats.kills

# and reset our rankings
execute as @a run scoreboard players set @s extract.stats.kills.rank -1

# set our highest value to -1
scoreboard players set $extract.highest extract.stats.kills.temp -1

# then determine the highest value
execute as @a run scoreboard players operation $extract.highest extract.stats.kills.temp > @s extract.stats.kills.temp

# then determine which player has that highest value & give them the highest rank applicable
execute as @a if score @s extract.stats.kills.temp = $extract.highest extract.stats.kills.temp unless score @s extract.stats.kills.rank matches 0.. run scoreboard players set @s extract.stats.kills.rank 1

# and then reset the score of whoever had the highest value
execute as @a if score @s extract.stats.kills.rank matches 1 run scoreboard players reset @s extract.stats.kills.temp

# and repeat 4 times
scoreboard players set $extract.highest extract.stats.kills.temp -1
execute as @a run scoreboard players operation $extract.highest extract.stats.kills.temp > @s extract.stats.kills.temp
execute as @a if score @s extract.stats.kills.temp = $extract.highest extract.stats.kills.temp unless score @s extract.stats.kills.rank matches 0.. run scoreboard players set @s extract.stats.kills.rank 2
execute as @a if score @s extract.stats.kills.rank matches 2 run scoreboard players reset @s extract.stats.kills.temp
scoreboard players set $extract.highest extract.stats.kills.temp -1
execute as @a run scoreboard players operation $extract.highest extract.stats.kills.temp > @s extract.stats.kills.temp
execute as @a if score @s extract.stats.kills.temp = $extract.highest extract.stats.kills.temp unless score @s extract.stats.kills.rank matches 0.. run scoreboard players set @s extract.stats.kills.rank 3
execute as @a if score @s extract.stats.kills.rank matches 3 run scoreboard players reset @s extract.stats.kills.temp
scoreboard players set $extract.highest extract.stats.kills.temp -1
execute as @a run scoreboard players operation $extract.highest extract.stats.kills.temp > @s extract.stats.kills.temp
execute as @a if score @s extract.stats.kills.temp = $extract.highest extract.stats.kills.temp unless score @s extract.stats.kills.rank matches 0.. run scoreboard players set @s extract.stats.kills.rank 4
execute as @a if score @s extract.stats.kills.rank matches 4 run scoreboard players reset @s extract.stats.kills.temp
scoreboard players set $extract.highest extract.stats.kills.temp -1
execute as @a run scoreboard players operation $extract.highest extract.stats.kills.temp > @s extract.stats.kills.temp
execute as @a if score @s extract.stats.kills.temp = $extract.highest extract.stats.kills.temp unless score @s extract.stats.kills.rank matches 0.. run scoreboard players set @s extract.stats.kills.rank 5
scoreboard players reset @s extract.stats.kills.temp

# <===== END OF ROUND RESETS =====>
execute if score extract.handler extract.timer.delay3 matches 2 run scoreboard players set extract.handler extract.stats.roundsCompleted 7
execute if score extract.handler extract.timer.delay3 matches 2 run gamemode spectator @a

# <===== KILLS ANNOUNCEMENT =====>

execute if score extract.handler extract.timer.delay3 matches 200 run tellraw @a {text:"Top Killers:",color:red}
execute as @a if score @s extract.stats.kills.rank matches 1 if score extract.handler extract.timer.delay3 matches 200 run tellraw @a [{text:"[#1]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.stats.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s extract.stats.kills.rank matches 2 if score extract.handler extract.timer.delay3 matches 200 run tellraw @a [{text:"[#2]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.stats.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s extract.stats.kills.rank matches 3 if score extract.handler extract.timer.delay3 matches 200 run tellraw @a [{text:"[#3]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.stats.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s extract.stats.kills.rank matches 4 if score extract.handler extract.timer.delay3 matches 200 run tellraw @a [{text:"[#4]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.stats.kills"},color:red},{text:" kills",color:red}]
execute as @a if score @s extract.stats.kills.rank matches 5 if score extract.handler extract.timer.delay3 matches 200 run tellraw @a [{text:"[#5]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.stats.kills"},color:red},{text:" kills",color:red}]

# <===== INDIVIDUAL ANNOUNCEMENT =====>

execute if score extract.handler extract.timer.delay3 matches 400 run tellraw @a {text:"Top Individual Points:",color:red}
execute as @a if score @s extract.points.indiv.rank matches 1 if score extract.handler extract.timer.delay3 matches 400 run tellraw @a [{text:"[#1]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.points.indiv"},color:red},{text:" points",color:red}]
execute as @a if score @s extract.points.indiv.rank matches 2 if score extract.handler extract.timer.delay3 matches 400 run tellraw @a [{text:"[#2]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.points.indiv"},color:red},{text:" points",color:red}]
execute as @a if score @s extract.points.indiv.rank matches 3 if score extract.handler extract.timer.delay3 matches 400 run tellraw @a [{text:"[#3]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.points.indiv"},color:red},{text:" points",color:red}]
execute as @a if score @s extract.points.indiv.rank matches 4 if score extract.handler extract.timer.delay3 matches 400 run tellraw @a [{text:"[#4]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.points.indiv"},color:red},{text:" points",color:red}]
execute as @a if score @s extract.points.indiv.rank matches 5 if score extract.handler extract.timer.delay3 matches 400 run tellraw @a [{text:"[#5]: ",color:red},{selector:"@s"},{text:" - ",color:red},{score:{name:"@s",objective:"extract.points.indiv"},color:red},{text:" points",color:red}]

# team announcement
execute if score extract.handler extract.timer.delay3 matches 600 run function extract:team_announcement