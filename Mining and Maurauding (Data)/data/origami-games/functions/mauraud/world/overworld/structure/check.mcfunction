#attempt to spawn a structure based on the seed
#called by mauraud/world/overworld/chunk/generate

#spawn structure markers
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{structure:"cave_ice"}}}}}] run summon area_effect_cloud ~ 0 ~ {Tags:["mau_entity","mau_structure","mau_structure_cave_ice"],CustomName:'"mau_structure"'}
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{structure:"cave_sand"}}}}}] run summon area_effect_cloud ~ 0 ~ {Tags:["mau_entity","mau_structure","mau_structure_cave_sand"],CustomName:'"mau_structure"'}
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{structure:"spelunker_base"}}}}}] run summon area_effect_cloud ~ 0 ~ {Tags:["mau_entity","mau_structure","mau_structure_spelunker_base"],CustomName:'"mau_structure"'}
#spread markers
execute positioned ~ 0 ~ run spreadplayers ~ ~ 0 1 false @e[type=area_effect_cloud,tag=mau_structure,distance=...5]

#spawn structures
execute as @e[type=area_effect_cloud,tag=mau_structure] at @s run function origami-games:mauraud/world/overworld/structure/spawn

#kill markers
kill @e[type=area_effect_cloud,tag=mau_structure]
kill @s[type=!player]
