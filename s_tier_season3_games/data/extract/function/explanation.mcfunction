# this function delivers the explanation of how EXTRACT will work

# every 8 seconds, each blurb will be told to the players
# and players will be teleported somewhere for an appropriate visual

# blurb #1
execute if score extract.handler extract.timer.explanation matches 1 run title @a title {text:"EXTRACT",color:"red"}
execute if score extract.handler extract.timer.explanation matches 1 run gamemode spectator @a
execute in extract:extract if score extract.handler extract.timer.explanation matches 1 run teleport @a 19 112 0 90 30
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:"Extract is a round-robin pvp game.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:"Your objective is to mine as many ores and kill your opponents.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute in extract:extract if score extract.handler extract.timer.explanation matches 160 run teleport @a 19 118 19 135 35
execute if score extract.handler extract.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 160 run tellraw @a {text:"This is the map teams will play each other on.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 160 run tellraw @a {text:"The map is symmetrical, so all teams have an equal advantage.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute in extract:extract if score extract.handler extract.timer.explanation matches 320 run teleport @a -5 103 18 -40 10
execute if score extract.handler extract.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 320 run tellraw @a {text:"Before each round, there will be a short period to choose which class you would like to use.",color:red}
execute if score extract.handler extract.timer.explanation matches 320 run tellraw @a {text:"You may switch your class before the round starts, but make sure you always pick one. They do not save between rounds.",color:red}
execute if score extract.handler extract.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 320 run tellraw @a {text:"Each round will last 2 minutes.",color:red}
execute if score extract.handler extract.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute in extract:extract if score extract.handler extract.timer.explanation matches 480 run teleport @a -5 102 3 -117.5 7
execute if score extract.handler extract.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 480 run tellraw @a {text:"You may earn the following points when playing:",color:"red"}
execute if score extract.handler extract.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 480 run tellraw @a [{text:"Diamond Block: +",color:"red"},{text:"2",color:"dark_red"},{text:" point",color:"red"}]
execute if score extract.handler extract.timer.explanation matches 480 run tellraw @a [{text:"Gold Block: +",color:"red"},{text:"1",color:"dark_red"},{text:" point",color:"red"}]
execute if score extract.handler extract.timer.explanation matches 480 run tellraw @a [{text:"Kill: +",color:"red"},{text:"1",color:"dark_red"},{text:" point",color:"red"}]
execute if score extract.handler extract.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute in extract:extract if score extract.handler extract.timer.explanation matches 640 run teleport @a 18 107 18 135 20
execute if score extract.handler extract.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 640 run tellraw @a {text:"You will play each other team once.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 640 run tellraw @a {text:"So there will be a total of seven rounds.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 640 run tellraw @a {text:" "}

# blurb #6
execute if score extract.handler extract.timer.explanation matches 799 run gamemode adventure @a
execute if score extract.handler extract.timer.explanation matches 799 run gamemode spectator @a[team=SPECTATORS]
execute in extract:extract if score extract.handler extract.timer.explanation matches 799 run teleport @a 0 101 -18 0 0
execute if score extract.handler extract.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 799 run tellraw @a {text:"The first round begins in about 20 seconds.",color:"red"}
execute if score extract.handler extract.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score extract.handler extract.timer.explanation matches 799 run tellraw @a {text:"Good luck!",color:"red"}
execute if score extract.handler extract.timer.explanation matches 799 run tellraw @a {text:" "}