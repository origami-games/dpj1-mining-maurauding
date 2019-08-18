#generate chunk
#@s - @e[type=area_effect_cloud,tag=mau_chunk_generate]
#called by mauraud/world/overworld/clock4

#try to spawn a structure before any chunk modifications have been done
execute unless block ~ 2 ~ bedrock if block ~ 3 ~ stone unless block ~ 4 ~ bedrock run loot spawn ~ ~ ~ loot origami-games:mauraud/world/structure/check
execute as @e[type=item,distance=0] if data entity @s Item.tag.origami-games.mauraud.structure run function origami-games:mauraud/world/overworld/structure/check
#mark the chunk as generated
fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
tag @s remove mau_chunk_generate

#spread outwards
execute positioned ~16 0 ~ unless block ~ ~ ~ barrier unless entity @e[type=area_effect_cloud,tag=mau_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["mau_chunk","mau_chunk_generate"],CustomName:'"mau_chunk"',Duration:20}
execute positioned ~-16 0 ~ unless block ~ ~ ~ barrier unless entity @e[type=area_effect_cloud,tag=mau_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["mau_chunk","mau_chunk_generate"],CustomName:'"mau_chunk"',Duration:20}
execute positioned ~ 0 ~16 unless block ~ ~ ~ barrier unless entity @e[type=area_effect_cloud,tag=mau_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["mau_chunk","mau_chunk_generate"],CustomName:'"mau_chunk"',Duration:20}
execute positioned ~ 0 ~-16 unless block ~ ~ ~ barrier unless entity @e[type=area_effect_cloud,tag=mau_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["mau_chunk","mau_chunk_generate"],CustomName:'"mau_chunk"',Duration:20}

#warn
title @a actionbar [{"text":"[","color":"dark_aqua"},{"translate":"pack.mauraud.name","color":"aqua"},{"text":"] ","color":"dark_aqua"},{"translate":"text.mauraud.world_generation.warn","color":""}]
