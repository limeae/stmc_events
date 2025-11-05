# function to change the pause status of the event
# if event is paused, it unpauses
# if event is running, it pauses

execute if score stmc.handler event.paused matches 0 run scoreboard players set stmc.handler event.paused 1
execute if score stmc.handler event.paused matches 1 run scoreboard players set stmc.handler event.paused 0