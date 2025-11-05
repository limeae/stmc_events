# load function for extract

# this function runs whenever beginning the extract game

# teleport players to spawn
execute in extract:extract run tp @a 0 101 -18 0 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 4000

# set weather
weather clear

# set appropriate gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 1 true
effect give @a regeneration 5 1 true
effect give @a resistance infinite 4 true
effect give @a mining_fatigue infinite 4 true

# set xp
xp set @a 0

# kill all entities
execute in extract:extract run kill @e[type=!player]

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add extract.timer.delay1 dummy
scoreboard objectives add extract.timer.explanation dummy
scoreboard objectives add extract.timer.delay2 dummy
scoreboard objectives add extract.timer.game dummy
scoreboard objectives add extract.timer.game.round1 dummy
scoreboard objectives add extract.timer.game.round2 dummy
scoreboard objectives add extract.timer.game.round3 dummy
scoreboard objectives add extract.timer.game.round4 dummy
scoreboard objectives add extract.timer.game.round5 dummy
scoreboard objectives add extract.timer.game.round6 dummy
scoreboard objectives add extract.timer.game.round7 dummy
scoreboard objectives add extract.timer.delay3 dummy
# stats
scoreboard objectives add extract.stats.kills playerKillCount
scoreboard objectives add extract.stats.kills.rank dummy
scoreboard objectives add extract.stats.alive dummy
scoreboard objectives add extract.players dummy
scoreboard objectives add extract.stats.deaths deathCount
scoreboard objectives add extract.stats.roundsCompleted dummy
scoreboard objectives add extract.stats.diamondsMined minecraft.mined:minecraft.diamond_block
scoreboard objectives add extract.stats.goldMined minecraft.mined:minecraft.gold_block
scoreboard objectives add extract.stats.game1completed dummy
scoreboard objectives add extract.stats.game2completed dummy
scoreboard objectives add extract.stats.game3completed dummy
scoreboard objectives add extract.stats.game4completed dummy
scoreboard objectives add extract.stats.gamescompleted dummy
scoreboard objectives add extract.stats.playersAlive dummy
# points
scoreboard objectives add extract.points.indiv dummy
scoreboard objectives add extract.points.indiv.rank dummy
scoreboard objectives add extract.points.team dummy
scoreboard objectives add extract.points.team.rank dummy
scoreboard objectives add extract.points.diamondValue dummy
scoreboard objectives add extract.points.goldValue dummy
scoreboard objectives add extract.points.killValue dummy
scoreboard objectives add extract.points.survivalValue dummy

# (re)set all necessary values
scoreboard players set extract.handler extract.stage 0

scoreboard players set extract.handler extract.timer.delay1 0
scoreboard players set extract.handler extract.timer.explanation 0
scoreboard players set extract.handler extract.timer.delay2 0
scoreboard players set extract.handler extract.timer.game 0
scoreboard players set extract.handler extract.timer.game.round1 0
scoreboard players set extract.handler extract.timer.game.round2 0
scoreboard players set extract.handler extract.timer.game.round3 0
scoreboard players set extract.handler extract.timer.game.round4 0
scoreboard players set extract.handler extract.timer.game.round5 0
scoreboard players set extract.handler extract.timer.game.round6 0
scoreboard players set extract.handler extract.timer.game.round7 0
scoreboard players set extract.handler extract.timer.delay3 0

scoreboard players set @a extract.stats.kills 0
scoreboard players set extract.handler extract.stats.roundsCompleted 0
scoreboard players set @a extract.stats.deaths 0
scoreboard players set @a extract.stats.diamondsMined 0
scoreboard players set @a extract.stats.goldMined 0
scoreboard players set extract.handler extract.stats.game1completed 0
scoreboard players set extract.handler extract.stats.game2completed 0
scoreboard players set extract.handler extract.stats.game3completed 0
scoreboard players set extract.handler extract.stats.game4completed 0

scoreboard players set @a extract.points.indiv 0
scoreboard players set extract.handler extract.points.diamondValue 2
scoreboard players set extract.handler extract.points.goldValue 1
scoreboard players set extract.handler extract.points.killValue 1
scoreboard players set extract.handler extract.points.survivalValue 0
function extract:points_update
function extract:death_handler

scoreboard objectives remove extract.sidebar