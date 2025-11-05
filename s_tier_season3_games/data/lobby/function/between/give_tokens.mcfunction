# recursively gives players tokens they have invested

execute as @a if score @s event.voting.investedTokens matches 1.. run \
        give @s sunflower[item_name={"text":"Token","color":"#FF6000"}]
execute as @a if score @s event.voting.investedTokens matches 1.. run \
        scoreboard players remove @s event.voting.investedTokens 1