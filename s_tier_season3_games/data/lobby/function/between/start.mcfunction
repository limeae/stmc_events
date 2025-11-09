# start function for lobbies between games

# run load function
function lobby:between/load

# reset lobby
execute if score stmc.handler event.stage matches 0 run function lobby:between/reset_world