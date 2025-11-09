clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a hunger 5 5 true
effect give @a instant_health 1 10
effect give @a mining_fatigue 20 2 true
effect give @a strength 20 0 true
gamemode adventure @a
scoreboard players reset @a mine.game.mined.diamond_ore
scoreboard players reset @a mine.game.deathcount
scoreboard players reset mine.handler mine.timer
scoreboard players set mine.handler mine.stage.lobby 0

scoreboard objectives setdisplay sidebar mine.points.mined.diamond_ore
scoreboard players set STMC mine.points.mined.diamond_ore 2001
scoreboard players set ---- mine.points.mined.diamond_ore 2000

spawnpoint @a 0 90 0

forceload add -49 -49 49 49

recipe take @a mine:mine_creaking_archer
recipe take @a mine:mine_creaking_builder
recipe take @a mine:mine_hoglin_archer
recipe take @a mine:mine_hoglin_builder
recipe take @a mine:mine_hoglin_tracker
recipe take @a mine:mine_warden_archer
recipe take @a mine:mine_warden_builder

kill @e[type=warden]
kill @e[type=hoglin]
kill @e[type=creaking]
kill @e[type=endermite]
kill @e[type=item]
tp @e[type=zombie] 0 -300 0
tp @e[type=skeleton] 0 -300 0
tp @e[type=stray] 0 -300 0
tp @e[type=drowned] 0 -300 0

clone 59 5 59 -59 0 -59 -59 20 -59
clone 59 5 59 -59 0 -59 -59 40 -59
clone 59 5 59 -59 0 -59 -59 60 -59
clone 59 5 59 -59 0 -59 -59 80 -59
clone 59 5 59 -59 0 -59 -59 100 -59
clone 59 5 59 -59 0 -59 -59 120 -59
clone 59 5 59 -59 0 -59 -59 140 -59
clone 59 5 59 -59 0 -59 -59 160 -59

tp @a[team=CYAN_COUGARS] 0 22 0
tp @a[team=RED_RACCOONS] 0 42 0
tp @a[team=GREEN_GOATS] 0 62 0
tp @a[team=PURPLE_PENGUINS] 0 82 0
tp @a[team=ORANGE_OTTERS] 0 102 0
tp @a[team=YELLOW_YAKS] 0 122 0
tp @a[team=BLUE_BEARS] 0 142 0
tp @a[team=PINK_PIKAS] 0 162 0