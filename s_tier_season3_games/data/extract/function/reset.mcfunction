# reset function for extract [EXTRACT]

# important resets
clear @a
effect clear @a
execute in extract:extract run forceload remove 350 75 -20 0

# remove bossbar
bossbar remove extract.timer

# update points
execute if score stmc.handler event.stage matches 1 run scoreboard players operation @s stats.points.indiv.g1 = @s extract.points.indiv
execute if score stmc.handler event.stage matches 3 run scoreboard players operation @s stats.points.indiv.g2 = @s extract.points.indiv
execute if score stmc.handler event.stage matches 5 run scoreboard players operation @s stats.points.indiv.g3 = @s extract.points.indiv
execute if score stmc.handler event.stage matches 7 run scoreboard players operation @s stats.points.indiv.g4 = @s extract.points.indiv
execute if score stmc.handler event.stage matches 9 run scoreboard players operation @s stats.points.indiv.g5 = @s extract.points.indiv
execute if score stmc.handler event.stage matches 11 run scoreboard players operation @s stats.points.indiv.g6 = @s extract.points.indiv
execute if score stmc.handler event.stage matches 13 run scoreboard players operation @s stats.points.indiv.g7 = @s extract.points.indiv
execute if score stmc.handler event.stage matches 15 run scoreboard players operation @s stats.points.indiv.g8 = @s extract.points.indiv

# move to next stage
scoreboard players add stmc.handler event.stage 1