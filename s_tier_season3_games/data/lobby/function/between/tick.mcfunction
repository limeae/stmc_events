# tick function for lobbies between games (and the first one)

# run every tick
function lobby:between/sidebar

# run start function if needed
execute unless score lobby.handler lobby.stage matches 0.. run function lobby:between/start

# update timer
scoreboard players add lobby.handler lobby.timer 1

# update elapsed secs & mins
scoreboard players add lobby.handler lobby.timer.temp 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players add lobby.handler lobby.timer.secs 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players set lobby.handler lobby.timer.temp 0
execute if score lobby.handler lobby.timer.secs matches 60 run scoreboard players add lobby.handler lobby.timer.mins 1
execute if score lobby.handler lobby.timer.secs matches 60 run scoreboard players set lobby.handler lobby.timer.secs 0

# run collect stage if we haven't reached switch time
execute if score lobby.handler lobby.timer < lobby.handler lobby.timer.switch run function lobby:between/collect_stage

# run voting stage otherwise
execute if score lobby.handler lobby.timer >= lobby.handler lobby.timer.switch run function lobby:between/vote_stage