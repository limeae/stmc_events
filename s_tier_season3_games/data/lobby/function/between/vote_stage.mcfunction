# tick function for lobby while in voting stage

# <===== EVERY TICK =====>

scoreboard players add lobby.handler lobby.timer.voteStage 1

# <===== TIME DEPENDENT =====>

# <===== TELEPORT PLAYERS =====>

# teleport players based on their team
execute if score lobby.handler lobby.timer.voteStage matches 1 in lobby:lobby run tp @a[team=RED_RACCOONS] 24 42 77 90 0
execute if score lobby.handler lobby.timer.voteStage matches 1 in lobby:lobby run tp @a[team=ORANGE_OTTERS] 24 42 55 90 0
execute if score lobby.handler lobby.timer.voteStage matches 1 in lobby:lobby run tp @a[team=PINK_PIKAS] 24 42 33 90 0
execute if score lobby.handler lobby.timer.voteStage matches 1 in lobby:lobby run tp @a[team=YELLOW_YAKS] 24 42 11 90 0
execute if score lobby.handler lobby.timer.voteStage matches 1 in lobby:lobby run tp @a[team=GREEN_GOATS] 24 42 -11 90 0
execute if score lobby.handler lobby.timer.voteStage matches 1 in lobby:lobby run tp @a[team=CYAN_COUGARS] 24 42 -33 90 0
execute if score lobby.handler lobby.timer.voteStage matches 1 in lobby:lobby run tp @a[team=PURPLE_PENGUINS] 24 42 -55 90 0
execute if score lobby.handler lobby.timer.voteStage matches 1 in lobby:lobby run tp @a[team=BLUE_BEARS] 24 42 -77 90 0

# <===== SHORT EXPLANATION =====>

execute if score lobby.handler lobby.timer.voteStage matches 10 in lobby:lobby run \
        title @a title [{text:"Vote!",color:green}]
execute if score lobby.handler lobby.timer.voteStage matches 10 in lobby:lobby run \
        title @a subtitle [{text:"The game with the most votes will be played next.",color:green}]

execute if score lobby.handler lobby.timer.voteStage matches 10 in lobby:lobby run tellraw @a ""
execute if score lobby.handler lobby.timer.voteStage matches 20 in lobby:lobby run \
        tellraw @a [{text:"Vote for which game you want to play next by placing your tokens in the game's respective chest."}]
execute if score lobby.handler lobby.timer.voteStage matches 30 in lobby:lobby run tellraw @a ""
execute if score lobby.handler lobby.timer.voteStage matches 40 in lobby:lobby run \
        tellraw @a [{text:"You may vote for multiple games if you would like."}]
execute if score lobby.handler lobby.timer.voteStage matches 50 in lobby:lobby run tellraw @a ""
execute if score lobby.handler lobby.timer.voteStage matches 60 in lobby:lobby run \
        tellraw @a [{text:"In about 15 seconds, votes will be tallied."}]
execute if score lobby.handler lobby.timer.voteStage matches 70 in lobby:lobby run tellraw @a ""

# <===== CHECK VOTES =====>
# check for votes in each chest [@20 seconds]

execute if score lobby.handler lobby.timer.voteStage matches 399 run tellraw @a ["",{text:"Counting votes...",color:green}]

# team1

# destroy wool to create an item that can be located
execute if score lobby.handler lobby.timer.voteStage matches 400 in lobby:lobby run \
        fill 16 41 70 16 41 84 air replace lime_wool destroy

# run function to store votes for that
execute if score lobby.handler lobby.timer.voteStage matches 401 as @e[type=item] if items entity @s container.0 lime_wool run \
        execute at @s store result score lobby.redRaccoons lobby.voting.raceCount if items block ~ ~1 ~ container.* sunflower

# place wool back & remove item entity
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 lime_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 lime_wool run \
        kill @s

execute if score lobby.handler lobby.timer.voteStage matches 400 in lobby:lobby run \
        fill 16 41 70 16 41 84 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 401 as @e[type=item] if items entity @s container.0 yellow_wool run \
        execute at @s store result score lobby.redRaccoons lobby.voting.solveCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 yellow_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 yellow_wool run \
        kill @s

execute if score lobby.handler lobby.timer.voteStage matches 400 in lobby:lobby run \
        fill 16 41 70 16 41 84 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 401 as @e[type=item] if items entity @s container.0 blue_wool run \
        execute at @s store result score lobby.redRaccoons lobby.voting.trialsCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 blue_wool run \
        kill @s

execute if score lobby.handler lobby.timer.voteStage matches 400 in lobby:lobby run \
        fill 16 41 70 16 41 84 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 401 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        execute at @s store result score lobby.redRaccoons lobby.voting.collectCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 light_blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        kill @s

execute if score lobby.handler lobby.timer.voteStage matches 400 in lobby:lobby run \
        fill 16 41 70 16 41 84 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 401 as @e[type=item] if items entity @s container.0 gray_wool run \
        execute at @s store result score lobby.redRaccoons lobby.voting.mineCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 gray_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 gray_wool run \
        kill @s

execute if score lobby.handler lobby.timer.voteStage matches 400 in lobby:lobby run \
        fill 16 41 70 16 41 84 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 401 as @e[type=item] if items entity @s container.0 red_wool run \
        execute at @s store result score lobby.redRaccoons lobby.voting.extractCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 red_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 red_wool run \
        kill @s

execute if score lobby.handler lobby.timer.voteStage matches 400 in lobby:lobby run \
        fill 16 41 70 16 41 84 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 401 as @e[type=item] if items entity @s container.0 pink_wool run \
        execute at @s store result score lobby.redRaccoons lobby.voting.blitzCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 pink_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 pink_wool run \
        kill @s

execute if score lobby.handler lobby.timer.voteStage matches 400 in lobby:lobby run \
        fill 16 41 70 16 41 84 air replace orange_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 401 as @e[type=item] if items entity @s container.0 orange_wool run \
        execute at @s store result score lobby.redRaccoons lobby.voting.brawlCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 orange_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 402 as @e[type=item] if items entity @s container.0 orange_wool run \
        kill @s

# team2
execute if score lobby.handler lobby.timer.voteStage matches 403 in lobby:lobby run \
        fill 16 41 48 16 41 62 air replace lime_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 404 as @e[type=item] if items entity @s container.0 lime_wool run \
        execute at @s store result score lobby.orangeOtters lobby.voting.raceCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 lime_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 lime_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 403 in lobby:lobby run \
        fill 16 41 48 16 41 62 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 404 as @e[type=item] if items entity @s container.0 yellow_wool run \
        execute at @s store result score lobby.orangeOtters lobby.voting.solveCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 yellow_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 yellow_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 403 in lobby:lobby run \
        fill 16 41 48 16 41 62 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 404 as @e[type=item] if items entity @s container.0 blue_wool run \
        execute at @s store result score lobby.orangeOtters lobby.voting.trialsCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 403 in lobby:lobby run \
        fill 16 41 48 16 41 62 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 404 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        execute at @s store result score lobby.orangeOtters lobby.voting.collectCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 light_blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 403 in lobby:lobby run \
        fill 16 41 48 16 41 62 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 404 as @e[type=item] if items entity @s container.0 gray_wool run \
        execute at @s store result score lobby.orangeOtters lobby.voting.mineCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 gray_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 gray_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 403 in lobby:lobby run \
        fill 16 41 48 16 41 62 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 404 as @e[type=item] if items entity @s container.0 red_wool run \
        execute at @s store result score lobby.orangeOtters lobby.voting.extractCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 red_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 red_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 403 in lobby:lobby run \
        fill 16 41 48 16 41 62 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 404 as @e[type=item] if items entity @s container.0 pink_wool run \
        execute at @s store result score lobby.orangeOtters lobby.voting.blitzCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 pink_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 pink_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 403 in lobby:lobby run \
        fill 16 41 48 16 41 62 air replace orange_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 404 as @e[type=item] if items entity @s container.0 orange_wool run \
        execute at @s store result score lobby.orangeOtters lobby.voting.brawlCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 orange_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 405 as @e[type=item] if items entity @s container.0 orange_wool run \
        kill @s

# team3
execute if score lobby.handler lobby.timer.voteStage matches 406 in lobby:lobby run \
        fill 16 41 26 16 41 40 air replace lime_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 407 as @e[type=item] if items entity @s container.0 lime_wool run \
        execute at @s store result score lobby.pinkPikas lobby.voting.raceCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 lime_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 lime_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 406 in lobby:lobby run \
        fill 16 41 26 16 41 40 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 407 as @e[type=item] if items entity @s container.0 yellow_wool run \
        execute at @s store result score lobby.pinkPikas lobby.voting.solveCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 yellow_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 yellow_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 406 in lobby:lobby run \
        fill 16 41 26 16 41 40 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 407 as @e[type=item] if items entity @s container.0 blue_wool run \
        execute at @s store result score lobby.pinkPikas lobby.voting.trialsCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 406 in lobby:lobby run \
        fill 16 41 26 16 41 40 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 407 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        execute at @s store result score lobby.pinkPikas lobby.voting.collectCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 light_blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 406 in lobby:lobby run \
        fill 16 41 26 16 41 40 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 407 as @e[type=item] if items entity @s container.0 gray_wool run \
        execute at @s store result score lobby.pinkPikas lobby.voting.mineCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 gray_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 gray_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 406 in lobby:lobby run \
        fill 16 41 26 16 41 40 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 407 as @e[type=item] if items entity @s container.0 red_wool run \
        execute at @s store result score lobby.pinkPikas lobby.voting.extractCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 red_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 red_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 406 in lobby:lobby run \
        fill 16 41 26 16 41 40 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 407 as @e[type=item] if items entity @s container.0 pink_wool run \
        execute at @s store result score lobby.pinkPikas lobby.voting.blitzCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 pink_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 pink_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 406 in lobby:lobby run \
        fill 16 41 26 16 41 40 air replace orange_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 407 as @e[type=item] if items entity @s container.0 orange_wool run \
        execute at @s store result score lobby.pinkPikas lobby.voting.brawlCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 orange_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 408 as @e[type=item] if items entity @s container.0 orange_wool run \
        kill @s

# team4
execute if score lobby.handler lobby.timer.voteStage matches 409 in lobby:lobby run \
        fill 16 41 4 16 41 18 air replace lime_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 410 as @e[type=item] if items entity @s container.0 lime_wool run \
        execute at @s store result score lobby.yellowYaks lobby.voting.raceCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 lime_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 lime_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 409 in lobby:lobby run \
        fill 16 41 4 16 41 18 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 410 as @e[type=item] if items entity @s container.0 yellow_wool run \
        execute at @s store result score lobby.yellowYaks lobby.voting.solveCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 yellow_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 yellow_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 409 in lobby:lobby run \
        fill 16 41 4 16 41 18 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 410 as @e[type=item] if items entity @s container.0 blue_wool run \
        execute at @s store result score lobby.yellowYaks lobby.voting.trialsCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 409 in lobby:lobby run \
        fill 16 41 4 16 41 18 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 410 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        execute at @s store result score lobby.yellowYaks lobby.voting.collectCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 light_blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 409 in lobby:lobby run \
        fill 16 41 4 16 41 18 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 410 as @e[type=item] if items entity @s container.0 gray_wool run \
        execute at @s store result score lobby.yellowYaks lobby.voting.mineCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 gray_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 gray_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 409 in lobby:lobby run \
        fill 16 41 4 16 41 18 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 410 as @e[type=item] if items entity @s container.0 red_wool run \
        execute at @s store result score lobby.yellowYaks lobby.voting.extractCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 red_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 red_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 409 in lobby:lobby run \
        fill 16 41 4 16 41 18 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 410 as @e[type=item] if items entity @s container.0 pink_wool run \
        execute at @s store result score lobby.yellowYaks lobby.voting.blitzCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 pink_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 pink_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 409 in lobby:lobby run \
        fill 16 41 4 16 41 18 air replace orange_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 410 as @e[type=item] if items entity @s container.0 orange_wool run \
        execute at @s store result score lobby.yellowYaks lobby.voting.brawlCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 orange_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 411 as @e[type=item] if items entity @s container.0 orange_wool run \
        kill @s

# team5
execute if score lobby.handler lobby.timer.voteStage matches 412 in lobby:lobby run \
        fill 16 41 -18 16 41 -4 air replace lime_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 413 as @e[type=item] if items entity @s container.0 lime_wool run \
        execute at @s store result score lobby.greenGoats lobby.voting.raceCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 lime_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 lime_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 412 in lobby:lobby run \
        fill 16 41 -18 16 41 -4 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 413 as @e[type=item] if items entity @s container.0 yellow_wool run \
        execute at @s store result score lobby.greenGoats lobby.voting.solveCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 yellow_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 yellow_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 412 in lobby:lobby run \
        fill 16 41 -18 16 41 -4 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 413 as @e[type=item] if items entity @s container.0 blue_wool run \
        execute at @s store result score lobby.greenGoats lobby.voting.trialsCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 412 in lobby:lobby run \
        fill 16 41 -18 16 41 -4 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 413 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        execute at @s store result score lobby.greenGoats lobby.voting.collectCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 light_blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 412 in lobby:lobby run \
        fill 16 41 -18 16 41 -4 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 413 as @e[type=item] if items entity @s container.0 gray_wool run \
        execute at @s store result score lobby.greenGoats lobby.voting.mineCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 gray_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 gray_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 412 in lobby:lobby run \
        fill 16 41 -18 16 41 -4 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 413 as @e[type=item] if items entity @s container.0 red_wool run \
        execute at @s store result score lobby.greenGoats lobby.voting.extractCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 red_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 red_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 412 in lobby:lobby run \
        fill 16 41 -18 16 41 -4 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 413 as @e[type=item] if items entity @s container.0 pink_wool run \
        execute at @s store result score lobby.greenGoats lobby.voting.blitzCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 pink_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 pink_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 412 in lobby:lobby run \
        fill 16 41 -18 16 41 -4 air replace orange_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 413 as @e[type=item] if items entity @s container.0 orange_wool run \
        execute at @s store result score lobby.greenGoats lobby.voting.brawlCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 orange_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 414 as @e[type=item] if items entity @s container.0 orange_wool run \
        kill @s

# team6
execute if score lobby.handler lobby.timer.voteStage matches 415 in lobby:lobby run \
        fill 16 41 -40 16 41 -26 air replace lime_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 416 as @e[type=item] if items entity @s container.0 lime_wool run \
        execute at @s store result score lobby.cyanCougars lobby.voting.raceCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 lime_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 lime_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 415 in lobby:lobby run \
        fill 16 41 -40 16 41 -26 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 416 as @e[type=item] if items entity @s container.0 yellow_wool run \
        execute at @s store result score lobby.cyanCougars lobby.voting.solveCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 yellow_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 yellow_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 415 in lobby:lobby run \
        fill 16 41 -40 16 41 -26 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 416 as @e[type=item] if items entity @s container.0 blue_wool run \
        execute at @s store result score lobby.cyanCougars lobby.voting.trialsCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 415 in lobby:lobby run \
        fill 16 41 -40 16 41 -26 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 416 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        execute at @s store result score lobby.cyanCougars lobby.voting.collectCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 light_blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 415 in lobby:lobby run \
        fill 16 41 -40 16 41 -26 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 416 as @e[type=item] if items entity @s container.0 gray_wool run \
        execute at @s store result score lobby.cyanCougars lobby.voting.mineCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 gray_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 gray_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 415 in lobby:lobby run \
        fill 16 41 -40 16 41 -26 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 416 as @e[type=item] if items entity @s container.0 red_wool run \
        execute at @s store result score lobby.cyanCougars lobby.voting.extractCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 red_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 red_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 415 in lobby:lobby run \
        fill 16 41 -40 16 41 -26 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 416 as @e[type=item] if items entity @s container.0 pink_wool run \
        execute at @s store result score lobby.cyanCougars lobby.voting.blitzCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 pink_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 pink_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 415 in lobby:lobby run \
        fill 16 41 -40 16 41 -26 air replace orange_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 416 as @e[type=item] if items entity @s container.0 orange_wool run \
        execute at @s store result score lobby.cyanCougars lobby.voting.brawlCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 orange_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 417 as @e[type=item] if items entity @s container.0 orange_wool run \
        kill @s

# team7
execute if score lobby.handler lobby.timer.voteStage matches 418 in lobby:lobby run \
        fill 16 41 -62 16 41 -48 air replace lime_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 419 as @e[type=item] if items entity @s container.0 lime_wool run \
        execute at @s store result score lobby.purplePenguins lobby.voting.raceCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 lime_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 lime_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 418 in lobby:lobby run \
        fill 16 41 -62 16 41 -48 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 419 as @e[type=item] if items entity @s container.0 yellow_wool run \
        execute at @s store result score lobby.purplePenguins lobby.voting.solveCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 yellow_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 yellow_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 418 in lobby:lobby run \
        fill 16 41 -62 16 41 -48 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 419 as @e[type=item] if items entity @s container.0 blue_wool run \
        execute at @s store result score lobby.purplePenguins lobby.voting.trialsCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 418 in lobby:lobby run \
        fill 16 41 -62 16 41 -48 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 419 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        execute at @s store result score lobby.purplePenguins lobby.voting.collectCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 light_blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 418 in lobby:lobby run \
        fill 16 41 -62 16 41 -48 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 419 as @e[type=item] if items entity @s container.0 gray_wool run \
        execute at @s store result score lobby.purplePenguins lobby.voting.mineCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 gray_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 gray_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 418 in lobby:lobby run \
        fill 16 41 -62 16 41 -48 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 419 as @e[type=item] if items entity @s container.0 red_wool run \
        execute at @s store result score lobby.purplePenguins lobby.voting.extractCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 red_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 red_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 418 in lobby:lobby run \
        fill 16 41 -62 16 41 -48 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 419 as @e[type=item] if items entity @s container.0 pink_wool run \
        execute at @s store result score lobby.purplePenguins lobby.voting.blitzCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 pink_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 pink_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 418 in lobby:lobby run \
        fill 16 41 -62 16 41 -48 air replace orange_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 419 as @e[type=item] if items entity @s container.0 orange_wool run \
        execute at @s store result score lobby.purplePenguins lobby.voting.brawlCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 orange_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 420 as @e[type=item] if items entity @s container.0 orange_wool run \
        kill @s

# team8
execute if score lobby.handler lobby.timer.voteStage matches 421 in lobby:lobby run \
        fill 16 41 -84 16 41 -70 air replace lime_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 422 as @e[type=item] if items entity @s container.0 lime_wool run \
        execute at @s store result score lobby.blueBears lobby.voting.raceCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 lime_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 lime_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 421 in lobby:lobby run \
        fill 16 41 -84 16 41 -70 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 422 as @e[type=item] if items entity @s container.0 yellow_wool run \
        execute at @s store result score lobby.blueBears lobby.voting.solveCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 yellow_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 yellow_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 421 in lobby:lobby run \
        fill 16 41 -84 16 41 -70 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 422 as @e[type=item] if items entity @s container.0 blue_wool run \
        execute at @s store result score lobby.blueBears lobby.voting.trialsCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 421 in lobby:lobby run \
        fill 16 41 -84 16 41 -70 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 422 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        execute at @s store result score lobby.blueBears lobby.voting.collectCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 light_blue_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 light_blue_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 421 in lobby:lobby run \
        fill 16 41 -84 16 41 -70 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 422 as @e[type=item] if items entity @s container.0 gray_wool run \
        execute at @s store result score lobby.blueBears lobby.voting.mineCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 gray_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 gray_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 421 in lobby:lobby run \
        fill 16 41 -84 16 41 -70 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 422 as @e[type=item] if items entity @s container.0 red_wool run \
        execute at @s store result score lobby.blueBears lobby.voting.extractCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 red_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 red_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 421 in lobby:lobby run \
        fill 16 41 -84 16 41 -70 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 422 as @e[type=item] if items entity @s container.0 pink_wool run \
        execute at @s store result score lobby.blueBears lobby.voting.blitzCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 pink_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 pink_wool run \
        kill @s
execute if score lobby.handler lobby.timer.voteStage matches 421 in lobby:lobby run \
        fill 16 41 -84 16 41 -70 air replace orange_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 422 as @e[type=item] if items entity @s container.0 orange_wool run \
        execute at @s store result score lobby.blueBears lobby.voting.brawlCount if items block ~ ~1 ~ container.* sunflower
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 orange_wool \ 
        at @s positioned as @s run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 423 as @e[type=item] if items entity @s container.0 orange_wool run \
        kill @s

# sum values
execute if score lobby.handler lobby.timer.voteStage matches 424 run scoreboard players set lobby.handler lobby.voting.raceCount 0
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.raceCount += lobby.redRaccoons lobby.voting.raceCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.raceCount += lobby.orangeOtters lobby.voting.raceCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.raceCount += lobby.pinkPikas lobby.voting.raceCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.raceCount += lobby.yellowYaks lobby.voting.raceCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.raceCount += lobby.greenGoats lobby.voting.raceCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.raceCount += lobby.cyanCougars lobby.voting.raceCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.raceCount += lobby.purplePenguins lobby.voting.raceCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.raceCount += lobby.blueBears lobby.voting.raceCount
        
execute if score lobby.handler lobby.timer.voteStage matches 424 run scoreboard players set lobby.handler lobby.voting.solveCount 0
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.solveCount += lobby.redRaccoons lobby.voting.solveCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.solveCount += lobby.orangeOtters lobby.voting.solveCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.solveCount += lobby.pinkPikas lobby.voting.solveCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.solveCount += lobby.yellowYaks lobby.voting.solveCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.solveCount += lobby.greenGoats lobby.voting.solveCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.solveCount += lobby.cyanCougars lobby.voting.solveCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.solveCount += lobby.purplePenguins lobby.voting.solveCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.solveCount += lobby.blueBears lobby.voting.solveCount
        
execute if score lobby.handler lobby.timer.voteStage matches 424 run scoreboard players set lobby.handler lobby.voting.trialsCount 0
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.trialsCount += lobby.redRaccoons lobby.voting.trialsCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.trialsCount += lobby.orangeOtters lobby.voting.trialsCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.trialsCount += lobby.pinkPikas lobby.voting.trialsCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.trialsCount += lobby.yellowYaks lobby.voting.trialsCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.trialsCount += lobby.greenGoats lobby.voting.trialsCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.trialsCount += lobby.cyanCougars lobby.voting.trialsCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.trialsCount += lobby.purplePenguins lobby.voting.trialsCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.trialsCount += lobby.blueBears lobby.voting.trialsCount
        
execute if score lobby.handler lobby.timer.voteStage matches 424 run scoreboard players set lobby.handler lobby.voting.collectCount 0
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.collectCount += lobby.redRaccoons lobby.voting.collectCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.collectCount += lobby.orangeOtters lobby.voting.collectCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.collectCount += lobby.pinkPikas lobby.voting.collectCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.collectCount += lobby.yellowYaks lobby.voting.collectCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.collectCount += lobby.greenGoats lobby.voting.collectCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.collectCount += lobby.cyanCougars lobby.voting.collectCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.collectCount += lobby.purplePenguins lobby.voting.collectCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.collectCount += lobby.blueBears lobby.voting.collectCount
        
execute if score lobby.handler lobby.timer.voteStage matches 424 run scoreboard players set lobby.handler lobby.voting.mineCount 0
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.mineCount += lobby.redRaccoons lobby.voting.mineCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.mineCount += lobby.orangeOtters lobby.voting.mineCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.mineCount += lobby.pinkPikas lobby.voting.mineCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.mineCount += lobby.yellowYaks lobby.voting.mineCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.mineCount += lobby.greenGoats lobby.voting.mineCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.mineCount += lobby.cyanCougars lobby.voting.mineCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.mineCount += lobby.purplePenguins lobby.voting.mineCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.mineCount += lobby.blueBears lobby.voting.mineCount
        
execute if score lobby.handler lobby.timer.voteStage matches 424 run scoreboard players set lobby.handler lobby.voting.extractCount 0
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.extractCount += lobby.redRaccoons lobby.voting.extractCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.extractCount += lobby.orangeOtters lobby.voting.extractCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.extractCount += lobby.pinkPikas lobby.voting.extractCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.extractCount += lobby.yellowYaks lobby.voting.extractCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.extractCount += lobby.greenGoats lobby.voting.extractCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.extractCount += lobby.cyanCougars lobby.voting.extractCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.extractCount += lobby.purplePenguins lobby.voting.extractCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.extractCount += lobby.blueBears lobby.voting.extractCount
        
execute if score lobby.handler lobby.timer.voteStage matches 424 run scoreboard players set lobby.handler lobby.voting.blitzCount 0
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.blitzCount += lobby.redRaccoons lobby.voting.blitzCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.blitzCount += lobby.orangeOtters lobby.voting.blitzCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.blitzCount += lobby.pinkPikas lobby.voting.blitzCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.blitzCount += lobby.yellowYaks lobby.voting.blitzCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.blitzCount += lobby.greenGoats lobby.voting.blitzCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.blitzCount += lobby.cyanCougars lobby.voting.blitzCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.blitzCount += lobby.purplePenguins lobby.voting.blitzCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.blitzCount += lobby.blueBears lobby.voting.blitzCount
        
execute if score lobby.handler lobby.timer.voteStage matches 424 run scoreboard players set lobby.handler lobby.voting.brawlCount 0
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.brawlCount += lobby.redRaccoons lobby.voting.brawlCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.brawlCount += lobby.orangeOtters lobby.voting.brawlCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.brawlCount += lobby.pinkPikas lobby.voting.brawlCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.brawlCount += lobby.yellowYaks lobby.voting.brawlCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.brawlCount += lobby.greenGoats lobby.voting.brawlCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.brawlCount += lobby.cyanCougars lobby.voting.brawlCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.brawlCount += lobby.purplePenguins lobby.voting.brawlCount
execute if score lobby.handler lobby.timer.voteStage matches 424 run \
        scoreboard players operation lobby.handler lobby.voting.brawlCount += lobby.blueBears lobby.voting.brawlCount

# <===== DETERMINE WINNER =====>

execute if score lobby.handler lobby.timer.voteStage matches 425 run function lobby:between/determine_vote

# announce winner
execute if score lobby.handler lobby.timer.voteStage matches 425 run tellraw @a ""
execute if score lobby.handler lobby.timer.voteStage matches 425 run tellraw @a ["",{text:"Votes counted!",color:green}]
execute if score lobby.handler lobby.timer.voteStage matches 430 run tellraw @a ""
execute if score lobby.handler lobby.timer.voteStage matches 440 run tellraw @a ["",{text:"The results are:",color:green}]

execute if score lobby.handler lobby.timer.voteStage matches 460 \
        run tellraw @a ["",{text:"Race: ",color:green},{score:{objective:"lobby.voting.raceCount",name:"lobby.handler"},color:dark_green}]
execute if score lobby.handler lobby.timer.voteStage matches 460 \
        run tellraw @a ["",{text:"Solve: ",color:yellow},{score:{objective:"lobby.voting.solveCount",name:"lobby.handler"},color:dark_green}]
execute if score lobby.handler lobby.timer.voteStage matches 460 \
        run tellraw @a ["",{text:"Trials: ",color:dark_aqua},{score:{objective:"lobby.voting.trialsCount",name:"lobby.handler"},color:dark_green}]
execute if score lobby.handler lobby.timer.voteStage matches 460 \
        run tellraw @a ["",{text:"Collect: ",color:aqua},{score:{objective:"lobby.voting.collectCount",name:"lobby.handler"},color:dark_green}]
execute if score lobby.handler lobby.timer.voteStage matches 460 \
        run tellraw @a ["",{text:"Mine: ",color:gray},{score:{objective:"lobby.voting.mineCount",name:"lobby.handler"},color:dark_green}]
execute if score lobby.handler lobby.timer.voteStage matches 460 \
        run tellraw @a ["",{text:"Extract: ",color:red},{score:{objective:"lobby.voting.extractCount",name:"lobby.handler"},color:dark_green}]
execute if score lobby.handler lobby.timer.voteStage matches 460 \
        run tellraw @a ["",{text:"Blitz: ",color:light_purple},{score:{objective:"lobby.voting.blitzCount",name:"lobby.handler"},color:dark_green}]
execute if score lobby.handler lobby.timer.voteStage matches 460 \
        run tellraw @a ["",{text:"Brawl: ",color:gold},{score:{objective:"lobby.voting.brawlCount",name:"lobby.handler"},color:dark_green}]

# voting resets
execute if score lobby.handler lobby.timer.voteStage matches 565 run scoreboard players reset lobby.handler lobby.stage
execute if score lobby.handler lobby.timer.voteStage matches 565 run gamerule keepInventory false

# run start function of winner
execute if score lobby.handler lobby.timer.voteStage matches 460 run tellraw @a ["",{text:"Teleporting in 5 seconds.",color:green,bold:true}]

execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax \
        run function race:start
execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax \
        run return 0
#execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax \
        run function solve:start
#execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax \
        run return 0
execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax \
        run function trials:start
execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax \
        run return 0
#execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax \
        run function collect:start
#execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax \
        run return 0
#execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax \
        run function mine:start
#execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax \
        run return 0
execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax \
        run function extract:start
execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax \
        run return 0
#execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax \
        run function blitz:start
#execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax \
        run return 0
execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax \
        run function survival_games:start
execute if score lobby.handler lobby.timer.voteStage matches 565 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax \
        run return 0

# remove the chest of winner in vote rooms
execute if score lobby.handler lobby.timer.voteStage matches 561 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax \
        in lobby:lobby run fill 15 40 -86 26 45 86 air replace lime_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 561 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax \
        in lobby:lobby run fill 15 40 -86 26 45 86 air replace yellow_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 561 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax \
        in lobby:lobby run fill 15 40 -86 26 45 86 air replace blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 561 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax \
        in lobby:lobby run fill 15 40 -86 26 45 86 air replace light_blue_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 561 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax \
        in lobby:lobby run fill 15 40 -86 26 45 86 air replace gray_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 561 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax \
        in lobby:lobby run fill 15 40 -86 26 45 86 air replace red_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 561 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax \
        in lobby:lobby run fill 15 40 -86 26 45 86 air replace pink_wool destroy
execute if score lobby.handler lobby.timer.voteStage matches 561 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax \
        in lobby:lobby run fill 15 40 -86 26 45 86 air replace orange_wool destroy

execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 #wool \
        at @s positioned as @s run setblock ~ ~1 ~ air
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 lime_wool \
        run setblock ~ ~ ~ lime_wool
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 yellow_wool \
        run setblock ~ ~ ~ yellow_wool
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 blue_wool \
        run setblock ~ ~ ~ blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 light_blue_wool \
        run setblock ~ ~ ~ light_blue_wool
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 gray_wool \
        run setblock ~ ~ ~ gray_wool
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 red_wool \
        run setblock ~ ~ ~ red_wool
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 pink_wool \
        run setblock ~ ~ ~ pink_wool
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 orange_wool \
        run setblock ~ ~ ~ orange_wool
execute if score lobby.handler lobby.timer.voteStage matches 562 in lobby:lobby as @e[type=item] if items entity @s container.0 #wool \
        run kill @s