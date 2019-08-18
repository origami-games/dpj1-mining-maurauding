#summons a chunk marker and aligns it to the chunk grid
#@s - players without barriers at y=0
#called by mauraud/player/clock16

#summon chunk marker
summon area_effect_cloud ~ 0 ~ {Tags:["mau_chunk","mau_chunk_init","mau_chunk_generate"],CustomName:'"mau_chunk"',Duration:20}
#align to chunk
execute store result entity @e[type=area_effect_cloud,tag=mau_chunk,tag=mau_chunk_init,limit=1] Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @e[type=area_effect_cloud,tag=mau_chunk,tag=mau_chunk_init,limit=1] Pos[2] double 16 run data get entity @s Pos[2] 0.0625
#if there already was a marker for that chunk, kill the new one
execute at @e[type=area_effect_cloud,tag=mau_chunk,tag=mau_chunk_init] if entity @e[type=area_effect_cloud,tag=mau_chunk,tag=!mau_chunk_init,distance=..1] run kill @e[tag=mau_chunk,tag=mau_chunk_init]
tag @e[type=area_effect_cloud,tag=mau_chunk,tag=mau_chunk_init] remove mau_chunk_init
