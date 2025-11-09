clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a instant_health 1 10
effect give @a resistance infinite 3
gamemode adventure @a
scoreboard players reset @a mine.game.mined.diamond_ore
scoreboard players reset @a mine.game.deathcount
scoreboard players reset mine.handler mine.timer

execute in mine:lobby run spawnpoint @a 0 100 0

forceload remove -49 -49 49 49

recipe give @a mine:mine_creaking_archer
recipe give @a mine:mine_creaking_builder
recipe give @a mine:mine_hoglin_archer
recipe give @a mine:mine_hoglin_builder
recipe give @a mine:mine_hoglin_tracker
recipe give @a mine:mine_warden_archer
recipe give @a mine:mine_warden_builder

kill @e[type=warden]
kill @e[type=hoglin]
kill @e[type=creaking]
kill @e[type=endermite]
kill @e[type=item]
tp @e[type=zombie] 0 -300 0
tp @e[type=skeleton] 0 -300 0
tp @e[type=stray] 0 -300 0
tp @e[type=drowned] 0 -300 0

execute in mine:lobby run tp @a 0 100 0

execute in mine:lobby run clone 59 84 59 -59 79 -59 -59 99 -59

execute if score mine.handler mine.stage.creaking matches 1 run scoreboard players set mine.handler mine.stage.creaking 2
execute if score mine.handler mine.stage.hoglin matches 1 run scoreboard players set mine.handler mine.stage.hoglin 2
execute if score mine.handler mine.stage.warden matches 1 run scoreboard players set mine.handler mine.stage.warden 2
scoreboard players set mine.handler mine.stage.lobby 1

scoreboard players reset mine.handler mine.vote.creaking
scoreboard players reset mine.handler mine.vote.hoglin
scoreboard players reset mine.handler mine.vote.warden

scoreboard players reset @a mine.vote
