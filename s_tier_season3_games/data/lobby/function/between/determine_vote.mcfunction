# this function determines which game won the active vote
# the function manually sets that game to be the next one played

# first, determine maximum score
scoreboard objectives add .voteMax dummy
scoreboard players set .lobby .voteMax 0
execute if score lobby.handler lobby.voting.raceCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.raceCount
execute if score lobby.handler lobby.voting.solveCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.solveCount
execute if score lobby.handler lobby.voting.trialsCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.trialsCount
execute if score lobby.handler lobby.voting.collectCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.collectCount
execute if score lobby.handler lobby.voting.mineCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.mineCount
execute if score lobby.handler lobby.voting.extractCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.extractCount
execute if score lobby.handler lobby.voting.blitzCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.blitzCount
execute if score lobby.handler lobby.voting.brawlCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.brawlCount

# then determine which game had that maximum score & set them to be the next game
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 0
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 1
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 2
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 3
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 4
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 5
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 6
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 7
        
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 0
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 1
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 2
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 3
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 4
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 5
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 6
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 7
        
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 0
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 1
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 2
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 3
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 4
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 5
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 6
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 7
        
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 0
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 1
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 2
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 3
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 4
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 5
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 6
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 7
        
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 0
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 1
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 2
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 3
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 4
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 5
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 6
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 7
        
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 0
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 1
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 2
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 3
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 4
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 5
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 6
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 7
        
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 0
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 1
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 2
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 3
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 4
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 5
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 6
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 7
        
execute if score stmc.handler event.stage matches 14 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game8 0
execute if score stmc.handler event.stage matches 14 if score lobby.handler lobby.voting.solveCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game8 1
execute if score stmc.handler event.stage matches 14 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game8 2
execute if score stmc.handler event.stage matches 14 if score lobby.handler lobby.voting.collectCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game8 3
execute if score stmc.handler event.stage matches 14 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game8 4
execute if score stmc.handler event.stage matches 14 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game8 5
execute if score stmc.handler event.stage matches 14 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game8 6
execute if score stmc.handler event.stage matches 14 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game8 7