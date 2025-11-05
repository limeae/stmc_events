# lobby sidebar

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <yellow>Points:<yellow>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>
# <team color><Team>: <TeamPoints><team color>

scoreboard objectives add lobby.sidebar dummy {"text": "  STMC Open  ", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar lobby.sidebar

# <===== BUILD FROM THE BOTTOM =====>

# reset teams
scoreboard players reset team.RedRaccoons lobby.sidebar
scoreboard players reset team.OrangeOtters lobby.sidebar
scoreboard players reset team.PinkPikas lobby.sidebar
scoreboard players reset team.YellowYaks lobby.sidebar
scoreboard players reset team.GreenGoats lobby.sidebar
scoreboard players reset team.CyanCougars lobby.sidebar
scoreboard players reset team.PurplePenguins lobby.sidebar
scoreboard players reset team.BlueBears lobby.sidebar

# they'll be automatically ranked by the scoreboard itself
scoreboard players operation team.RedRaccoons lobby.sidebar = team.RedRaccoons stats.points.team
scoreboard players display name team.RedRaccoons lobby.sidebar {"text": "  Red Raccoons", "color": "red"}
scoreboard players operation team.OrangeOtters lobby.sidebar = team.OrangeOtters stats.points.team
scoreboard players display name team.OrangeOtters lobby.sidebar {"text": "  Orange Otters", "color": "gold"}
scoreboard players operation team.PinkPikas lobby.sidebar = team.PinkPikas stats.points.team
scoreboard players display name team.PinkPikas lobby.sidebar {"text": "  Pink Pikas", "color": "light_purple"}
scoreboard players operation team.YellowYaks lobby.sidebar = team.YellowYaks stats.points.team
scoreboard players display name team.YellowYaks lobby.sidebar {"text": "  Yellow Yaks", "color": "yellow"}
scoreboard players operation team.GreenGoats lobby.sidebar = team.GreenGoats stats.points.team
scoreboard players display name team.GreenGoats lobby.sidebar {"text": "  Green Goats", "color": "dark_green"}
scoreboard players operation team.CyanCougars lobby.sidebar = team.CyanCougars stats.points.team
scoreboard players display name team.CyanCougars lobby.sidebar {"text": "  Cyan Cougars", "color": "dark_aqua"}
scoreboard players operation team.PurplePenguins lobby.sidebar = team.PurplePenguins stats.points.team
scoreboard players display name team.PurplePenguins lobby.sidebar {"text": "  Purple Penguins", "color": "dark_purple"}
scoreboard players operation team.BlueBears lobby.sidebar = team.BlueBears stats.points.team
scoreboard players display name team.BlueBears lobby.sidebar {"text": "  Blue Bears", "color": "blue"}

# add each fakeplayer to the team they are representing (to load the prefixes accordingly)
team join RED_RACCOONS team.RedRaccoons
team join ORANGE_OTTERS team.OrangeOtters
team join PINK_PIKAS team.PinkPikas
team join YELLOW_YAKS team.YellowYaks
team join GREEN_GOATS team.GreenGoats
team join CYAN_COUGARS team.CyanCougars
team join PURPLE_PENGUINS team.PurplePenguins
team join BLUE_BEARS team.BlueBears

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lPoints: lobby.sidebar 20000

# blank line
scoreboard players set §a lobby.sidebar 20001

# timer
scoreboard players set lobby.timer lobby.sidebar 20002
execute unless score stmc.handler event.stage matches 13.. if score stmc.handler event.timer.bgSecs matches ..9 run scoreboard players display name lobby.timer lobby.sidebar [{text:"Time: ",color:red,bold:true},{score:{name:"stmc.handler",objective:"event.timer.bgMins"},color:red},{text:":0",color:red},{score:{name:"stmc.handler",objective:"event.timer.bgSecs"},color:red}]
execute unless score stmc.handler event.stage matches 13.. if score stmc.handler event.timer.bgSecs matches 10..59 run scoreboard players display name lobby.timer lobby.sidebar [{text:"Time: ",color:red,bold:true},{score:{name:"stmc.handler",objective:"event.timer.bgMins"},color:red},{text:":",color:red},{score:{name:"stmc.handler",objective:"event.timer.bgSecs"},color:red}]
execute if score stmc.handler event.stage matches 13 run scoreboard players display name lobby.timer lobby.sidebar {text:"Finale!",color:white,bold:true}
execute if score stmc.handler event.stage matches 14 run scoreboard players display name lobby.timer lobby.sidebar {text:"THANKS FOR PLAYING!",color:red,bold:true}

# blank line
scoreboard players set §b lobby.sidebar 20003

# set the players' actionbar to their individual rank & points
execute as @a run title @s actionbar [{text:"[#",color:gold},{score:{name:"@s",objective:"stats.points.indiv.rank"}},{text:"]: ",color:gold},{score:{name:"@s",objective:"stats.points.indiv"}},{text:" points",color:gold}]