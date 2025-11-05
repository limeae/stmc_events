# executes as @s (whoever had the zombie_head item)
# overwrites the inventory of @s with the zombie class inventory

# base items
clear @s
item replace entity @s armor.head with leather_helmet[enchantments={"minecraft:binding_curse":1}]
item replace entity @s armor.chest with leather_chestplate[enchantments={"minecraft:binding_curse":1}]
item replace entity @s armor.legs with chainmail_leggings[enchantments={"minecraft:binding_curse":1}]
item replace entity @s armor.feet with chainmail_boots[attribute_modifiers= \ 
        [{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}], \ 
        enchantments={"minecraft:binding_curse":1}]
item replace entity @s hotbar.0 with stone_sword
item replace entity @s hotbar.1 with iron_pickaxe[can_break=[{blocks:"diamond_block"},{blocks:"gold_block"}], \ 
                tool={default_mining_speed:0.1,damage_per_block:0, \ 
                rules:[{speed:500,correct_for_drops:true,blocks:"gold_block"},{speed:450,correct_for_drops:true,blocks:"diamond_block"}]}, \ 
                custom_name={"color":"yellow","text":"Ore Breaker"}]
item replace entity @s hotbar.0 with stone_sword

# zombie specific items
item replace entity @s armor.chest with iron_chestplate[enchantments={"minecraft:binding_curse":1}]
item replace entity @s hotbar.0 with wooden_axe
item replace entity @s weapon.offhand with shield
item replace entity @s hotbar.2 with fishing_rod[enchantments={"knockback":1}]