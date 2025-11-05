# points update function for Extract [EXTRACT]

# this function will add points based on player mine amounts

# the function will then sum up team points

# and finally set total lap time as the actionbar

# <===== PLAYER POINTS =====>

# diamonds
scoreboard objectives add extract.points.diamondPoints dummy

scoreboard players set extract.RedRaccoons extract.points.diamondPoints 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation extract.RedRaccoons extract.points.diamondPoints += @s extract.stats.diamondsMined
scoreboard players operation extract.RedRaccoons extract.points.diamondPoints *= extract.handler extract.points.diamondValue
scoreboard players set extract.OrangeOtters extract.points.diamondPoints 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation extract.OrangeOtters extract.points.diamondPoints += @s extract.stats.diamondsMined
scoreboard players operation extract.OrangeOtters extract.points.diamondPoints *= extract.handler extract.points.diamondValue
scoreboard players set extract.PinkPikas extract.points.diamondPoints 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation extract.PinkPikas extract.points.diamondPoints += @s extract.stats.diamondsMined
scoreboard players operation extract.PinkPikas extract.points.diamondPoints *= extract.handler extract.points.diamondValue
scoreboard players set extract.YellowYaks extract.points.diamondPoints 0
execute as @a[team=YELLOW_YAKS] run scoreboard players operation extract.YellowYaks extract.points.diamondPoints += @s extract.stats.diamondsMined
scoreboard players operation extract.YellowYaks extract.points.diamondPoints *= extract.handler extract.points.diamondValue
scoreboard players set extract.GreenGoats extract.points.diamondPoints 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation extract.GreenGoats extract.points.diamondPoints += @s extract.stats.diamondsMined
scoreboard players operation extract.GreenGoats extract.points.diamondPoints *= extract.handler extract.points.diamondValue
scoreboard players set extract.CyanCougars extract.points.diamondPoints 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation extract.CyanCougars extract.points.diamondPoints += @s extract.stats.diamondsMined
scoreboard players operation extract.CyanCougars extract.points.diamondPoints *= extract.handler extract.points.diamondValue
scoreboard players set extract.PurplePenguins extract.points.diamondPoints 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation extract.PurplePenguins extract.points.diamondPoints += @s extract.stats.diamondsMined
scoreboard players operation extract.PurplePenguins extract.points.diamondPoints *= extract.handler extract.points.diamondValue
scoreboard players set extract.BlueBears extract.points.diamondPoints 0
execute as @a[team=BLUE_BEARS] run scoreboard players operation extract.BlueBears extract.points.diamondPoints += @s extract.stats.diamondsMined
scoreboard players operation extract.BlueBears extract.points.diamondPoints *= extract.handler extract.points.diamondValue

# gold
scoreboard objectives add extract.points.goldPoints dummy

scoreboard players set extract.RedRaccoons extract.points.goldPoints 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation extract.RedRaccoons extract.points.goldPoints += @s extract.stats.goldMined
scoreboard players operation extract.RedRaccoons extract.points.goldPoints *= extract.handler extract.points.goldValue
scoreboard players set extract.OrangeOtters extract.points.goldPoints 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation extract.OrangeOtters extract.points.goldPoints += @s extract.stats.goldMined
scoreboard players operation extract.OrangeOtters extract.points.goldPoints *= extract.handler extract.points.goldValue
scoreboard players set extract.PinkPikas extract.points.goldPoints 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation extract.PinkPikas extract.points.goldPoints += @s extract.stats.goldMined
scoreboard players operation extract.PinkPikas extract.points.goldPoints *= extract.handler extract.points.goldValue
scoreboard players set extract.YellowYaks extract.points.goldPoints 0
execute as @a[team=YELLOW_YAKS] run scoreboard players operation extract.YellowYaks extract.points.goldPoints += @s extract.stats.goldMined
scoreboard players operation extract.YellowYaks extract.points.goldPoints *= extract.handler extract.points.goldValue
scoreboard players set extract.GreenGoats extract.points.goldPoints 0
execute as @a[team=GREEN_GOATS] run scoreboard players operation extract.GreenGoats extract.points.goldPoints += @s extract.stats.goldMined
scoreboard players operation extract.GreenGoats extract.points.goldPoints *= extract.handler extract.points.goldValue
scoreboard players set extract.CyanCougars extract.points.goldPoints 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation extract.CyanCougars extract.points.goldPoints += @s extract.stats.goldMined
scoreboard players operation extract.CyanCougars extract.points.goldPoints *= extract.handler extract.points.goldValue
scoreboard players set extract.PurplePenguins extract.points.goldPoints 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation extract.PurplePenguins extract.points.goldPoints += @s extract.stats.goldMined
scoreboard players operation extract.PurplePenguins extract.points.goldPoints *= extract.handler extract.points.goldValue
scoreboard players set extract.BlueBears extract.points.goldPoints 0
execute as @a[team=BLUE_BEARS] run scoreboard players operation extract.BlueBears extract.points.goldPoints += @s extract.stats.goldMined
scoreboard players operation extract.BlueBears extract.points.goldPoints *= extract.handler extract.points.goldValue

# kills
scoreboard objectives add extract.points.killPoints dummy

scoreboard players set extract.RedRaccoons extract.points.killPoints 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation extract.RedRaccoons extract.points.killPoints += @s extract.stats.kills
scoreboard players operation extract.RedRaccoons extract.points.killPoints *= extract.handler extract.points.killValue
scoreboard players set extract.OrangeOtters extract.points.killPoints 0
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation extract.OrangeOtters extract.points.killPoints += @s extract.stats.kills
scoreboard players operation extract.OrangeOtters extract.points.killPoints *= extract.handler extract.points.killValue
scoreboard players set extract.PinkPikas extract.points.killPoints 0
execute as @a[team=PINK_PIKAS] run scoreboard players operation extract.PinkPikas extract.points.killPoints += @s extract.stats.kills
scoreboard players operation extract.PinkPikas extract.points.killPoints *= extract.handler extract.points.killValue
scoreboard players set extract.GreenGoats extract.points.killPoints 0
scoreboard players set extract.YellowYaks extract.points.killPoints 0
execute as @a[team=YELLOW_YAKS] run scoreboard players operation extract.YellowYaks extract.points.killPoints += @s extract.stats.kills
scoreboard players operation extract.YellowYaks extract.points.killPoints *= extract.handler extract.points.killValue
execute as @a[team=GREEN_GOATS] run scoreboard players operation extract.GreenGoats extract.points.killPoints += @s extract.stats.kills
scoreboard players operation extract.GreenGoats extract.points.killPoints *= extract.handler extract.points.killValue
scoreboard players set extract.CyanCougars extract.points.killPoints 0
execute as @a[team=CYAN_COUGARS] run scoreboard players operation extract.CyanCougars extract.points.killPoints += @s extract.stats.kills
scoreboard players operation extract.CyanCougars extract.points.killPoints *= extract.handler extract.points.killValue
scoreboard players set extract.PurplePenguins extract.points.killPoints 0
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation extract.PurplePenguins extract.points.killPoints += @s extract.stats.kills
scoreboard players operation extract.PurplePenguins extract.points.killPoints *= extract.handler extract.points.killValue
scoreboard players set extract.BlueBears extract.points.killPoints 0
execute as @a[team=BLUE_BEARS] run scoreboard players operation extract.BlueBears extract.points.killPoints += @s extract.stats.kills
scoreboard players operation extract.BlueBears extract.points.killPoints *= extract.handler extract.points.killValue

# overall
scoreboard players set extract.RedRaccoons extract.points.team 0
scoreboard players operation extract.RedRaccoons extract.points.team += extract.RedRaccoons extract.points.diamondPoints
scoreboard players operation extract.RedRaccoons extract.points.team += extract.RedRaccoons extract.points.goldPoints
scoreboard players operation extract.RedRaccoons extract.points.team += extract.RedRaccoons extract.points.killPoints

scoreboard players set extract.OrangeOtters extract.points.team 0
scoreboard players operation extract.OrangeOtters extract.points.team += extract.OrangeOtters extract.points.diamondPoints
scoreboard players operation extract.OrangeOtters extract.points.team += extract.OrangeOtters extract.points.goldPoints
scoreboard players operation extract.OrangeOtters extract.points.team += extract.OrangeOtters extract.points.killPoints

scoreboard players set extract.PinkPikas extract.points.team 0
scoreboard players operation extract.PinkPikas extract.points.team += extract.PinkPikas extract.points.diamondPoints
scoreboard players operation extract.PinkPikas extract.points.team += extract.PinkPikas extract.points.goldPoints
scoreboard players operation extract.PinkPikas extract.points.team += extract.PinkPikas extract.points.killPoints

scoreboard players set extract.YellowYaks extract.points.team 0
scoreboard players operation extract.YellowYaks extract.points.team += extract.YellowYaks extract.points.diamondPoints
scoreboard players operation extract.YellowYaks extract.points.team += extract.YellowYaks extract.points.goldPoints
scoreboard players operation extract.YellowYaks extract.points.team += extract.YellowYaks extract.points.killPoints

scoreboard players set extract.GreenGoats extract.points.team 0
scoreboard players operation extract.GreenGoats extract.points.team += extract.GreenGoats extract.points.diamondPoints
scoreboard players operation extract.GreenGoats extract.points.team += extract.GreenGoats extract.points.goldPoints
scoreboard players operation extract.GreenGoats extract.points.team += extract.GreenGoats extract.points.killPoints

scoreboard players set extract.CyanCougars extract.points.team 0
scoreboard players operation extract.CyanCougars extract.points.team += extract.CyanCougars extract.points.diamondPoints
scoreboard players operation extract.CyanCougars extract.points.team += extract.CyanCougars extract.points.goldPoints
scoreboard players operation extract.CyanCougars extract.points.team += extract.CyanCougars extract.points.killPoints

scoreboard players set extract.PurplePenguins extract.points.team 0
scoreboard players operation extract.PurplePenguins extract.points.team += extract.PurplePenguins extract.points.diamondPoints
scoreboard players operation extract.PurplePenguins extract.points.team += extract.PurplePenguins extract.points.goldPoints
scoreboard players operation extract.PurplePenguins extract.points.team += extract.PurplePenguins extract.points.killPoints

scoreboard players set extract.BlueBears extract.points.team 0
scoreboard players operation extract.BlueBears extract.points.team += extract.BlueBears extract.points.diamondPoints
scoreboard players operation extract.BlueBears extract.points.team += extract.BlueBears extract.points.goldPoints
scoreboard players operation extract.BlueBears extract.points.team += extract.BlueBears extract.points.killPoints

# <===== INDIV POINTS =====>

scoreboard players set @a extract.points.indiv 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s extract.points.indiv = extract.RedRaccoons extract.points.team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s extract.points.indiv /= extract.RedRaccoons extract.players
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s extract.points.indiv = extract.OrangeOtters extract.points.team
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s extract.points.indiv /= extract.OrangeOtters extract.players
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s extract.points.indiv = extract.PinkPikas extract.points.team
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s extract.points.indiv /= extract.PinkPikas extract.players
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s extract.points.indiv = extract.YellowYaks extract.points.team
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s extract.points.indiv /= extract.YellowYaks extract.players
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s extract.points.indiv = extract.GreenGoats extract.points.team
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s extract.points.indiv /= extract.GreenGoats extract.players
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s extract.points.indiv = extract.CyanCougars extract.points.team
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s extract.points.indiv /= extract.CyanCougars extract.players
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s extract.points.indiv = extract.PurplePenguins extract.points.team
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s extract.points.indiv /= extract.PurplePenguins extract.players
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s extract.points.indiv = extract.BlueBears extract.points.team
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s extract.points.indiv /= extract.BlueBears extract.players

# <===== SET ACTIONBAR =====>
execute as @a run title @s actionbar [{text:"Individual Points: ",color:yellow},{score:{name:"@s",objective:"extract.points.indiv"},color:red}]