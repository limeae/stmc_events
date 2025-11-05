# tick function for lobby while in collect stage

# <===== EVERY TICK =====>

# check for invested tokens
execute as @a store result score @s event.voting.investedTokensTemp run clear @s paper[custom_data={invest: 1b}] 0
execute as @a run scoreboard players operation @s event.voting.investedTokens += @s event.voting.investedTokensTemp
scoreboard players set @a event.voting.investedTokensTemp 0

# <===== TIME DEPENDENT =====>

# FIRST LOBBY:

# announce event start
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 10 run \
        title @a title ["",{text:"STMC Open",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 11 run \
        title @a subtitle ["",{text:"8 Minigames + a Finale!",color:green}]

# quick event explanation
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"The event will feature 8 custom-made minigames.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"Each minigame will award points based on a custom scoring system.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"After all 8 minigames conclude, the top 2 teams will compete in one final minigame.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"",color:green,bold:true}]

execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tellraw @a ["",{text:"",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tellraw @a ["",{text:"You will determine the order the minigames are played in by voting.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tellraw @a ["",{text:"Minigames played later will be worth more points.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tellraw @a ["",{text:"",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tellraw @a ["",{text:"You will vote using tokens. You can accrue tokens by walking into sunflowers in the lobby.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tellraw @a ["",{text:"Tokens may also be used to purchase limited items to slow others down.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tellraw @a ["",{text:"You may also invest your tokens by visiting the banker. These tokens will be returned to you after the next game ends with a 25% return on investment.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tellraw @a ["",{text:"",color:green,bold:true}]

execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 600 run \
        tellraw @a ["",{text:"",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 600 run \
        tellraw @a ["",{text:"Once the collection phase concludes, you will be teleported to a voting room.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 600 run \
        tellraw @a ["",{text:"Each team will have their own voting room.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 600 run \
        tellraw @a ["",{text:"You will have 30 seconds to cast votes for which game will be played next. Any tokens not spent will be lost.",color:green,bold:true}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 600 run \
        tellraw @a ["",{text:"",color:green,bold:true}]

# NOT FIRST LOBBY:

# for 50 ticks, return players' invested tokens to them
execute as @a unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2 run \
        tellraw @s ["",{text:"Returning ",color:green},{score:{name:"@s",objective:"event.voting.investedTokens"},color:dark_green},{text:" invested tokens to you!",color:green}]
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2..51 run \
        function lobby:between/give_tokens

# if anyone still has invested tokens, remove them
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 52 run \
        scoreboard players set @a event.voting.investedTokens 0

# at 10s, announce current player scores
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        function lobby:between/player_announcements
        
# at 20s, announce current team scores
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        function lobby:between/team_announcements