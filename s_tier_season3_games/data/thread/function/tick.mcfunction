# tick function for whole competition
# serves as the single thread handling the whole event

# before event stuff:

# first things first, let's automatically add our players to their respective teams

# RED RACCOONS
execute as Quacken_ unless entity @s[team=] run team join RED_RACCOONS Quacken_
execute as SeagullSpams unless entity @s[team=] run team join RED_RACCOONS SeagullSpams
execute as Epix809 unless entity @s[team=] run team join RED_RACCOONS Epix809
execute as .yungGeorge8249 unless entity @s[team=] run team join RED_RACCOONS .yungGeorge8249
# ORANGE OTTERS
execute as Exrry unless entity @s[team=] run team join ORANGE_OTTERS Exrry
execute as xcmimi unless entity @s[team=] run team join RED_RACCOONS xcmimi
execute as GoldShort unless entity @s[team=] run team join ORANGE_OTTERS GoldShort
execute as stompppy unless entity @s[team=] run team join ORANGE_OTTERS stompppy
# PINK PIKAS
execute as damien_____ unless entity @s[team=] run team join PINK_PIKAS damien_____
execute as authentic_flame unless entity @s[team=] run team join PINK_PIKAS authentic_flame
execute as SpringsMCJV unless entity @s[team=] run team join PINK_PIKAS SpringsMCJV
execute as Alivemc unless entity @s[team=] run team join PINK_PIKAS Alivemc
# GREEN GOATS
execute as notsxnset unless entity @s[team=] run team join GREEN_GOATS notsxnset
execute as IISona unless entity @s[team=] run team join GREEN_GOATS IISona
execute as dailey_ unless entity @s[team=] run team join GREEN_GOATS dailey_
execute as Ascellus706 unless entity @s[team=] run team join GREEN_GOATS Ascellus706
# CYAN COUGARS
execute as Krisppy_ unless entity @s[team=] run team join CYAN_COUGARS Krisppy_
execute as plqsmic unless entity @s[team=] run team join BLUE_BEARS plqsmic
execute as ZeroStep2 unless entity @s[team=] run team join CYAN_COUGARS ZeroStep2
execute as minttrose unless entity @s[team=] run team join CYAN_COUGARS minttrose
# PURPLE PENGUINS
execute as notjynxx unless entity @s[team=] run team join PURPLE_PENGUINS notjynxx
execute as aimei6432 unless entity @s[team=] run team join PURPLE_PENGUINS aimei6432
execute as limeae unless entity @s[team=] run team join PURPLE_PENGUINS limeae
execute as Navahamsta unless entity @s[team=] run team join PURPLE_PENGUINS Navahamsta

# SPECTATORS
execute as @a if entity @s[team=!RED_RACCOONS] if entity @s[team=!ORANGE_OTTERS] if entity @s[team=!PINK_PIKAS] if entity @s[team=!YELLOW_YAKS] \
        if entity @s[team=!GREEN_GOATS] if entity @s[team=!CYAN_COUGARS] if entity @s[team=!PURPLE_PENGUINS] if entity @s[team=!BLUE_BEARS] \ 
        if entity @s[team=!SPECTATORS] run team join SPECTATORS @s

# and finally, we can get to the thread of the event

# update player points & determine rankings from that
function thread:points_update
function thread:calculate_rankings

# and depending on our current stage, we call an update somewhere else in the world
# but we only call that update if the event is unpaused
execute if score stmc.handler event.paused matches 0 run function thread:stage_tick