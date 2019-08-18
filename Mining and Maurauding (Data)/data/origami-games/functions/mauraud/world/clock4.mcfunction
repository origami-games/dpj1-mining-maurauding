#clock tick (1/4t)
#called by mauraud/tick

#world generation
## overworld
execute if score world_generation mau_config matches 1 as @a[tag=!mau_world_gen_disabled,nbt={Dimension:0}] at @s unless block ~ 0 ~ barrier run function origami-games:mauraud/world/overworld/chunk/init
execute as @e[type=area_effect_cloud,tag=mau_chunk_generate] at @s run function origami-games:mauraud/world/overworld/chunk/generate
kill @e[type=area_effect_cloud,tag=mau_chunk,tag=!mau_chunk_generate]

execute store result score $chunks_generating mau_world_gen if entity @e[type=area_effect_cloud,tag=mau_chunk]
title @a[tag=mau_chunk_debug,nbt={Dimension:0}] actionbar [{"text":"mau_chunk "},{"score":{"objective":"mau_world_gen","name":"$chunks_generating"}}]

#reset clock
scoreboard players reset world_4 mau_clock
