#mob spawning check
#@s - @e[type=!#SPRITE,tag=!mau_entity,tag=!mau_found]
#called by mauraud/tick

loot spawn ~ -512 ~ loot origami-games:mauraud/world/check_custom_entity
execute if entity @e[type=item,y=-512,distance=0,nbt={Item:{tag:{origami-games:{mauraud:{custom_entity:1b}}}}}] run function origami-games:mauraud/entity/spawning/spawn
kill @e[type=item,y=-512,distance=0,nbt={Item:{tag:{origami-games:{mauraud:{custom_entity:1b}}}}}]

#don't check again
tag @s add mau_found
