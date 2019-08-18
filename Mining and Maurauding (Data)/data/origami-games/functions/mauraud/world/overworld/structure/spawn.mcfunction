#called by launch/world/overworld/structure/check

#if snow, fall to ground
execute at @s if block ~ ~-1 ~ snow run tp @s ~ ~-1 ~

#spawn structure
execute if entity @s[tag=mau_structure_cave_ice] at @s positioned ~ 30 ~ if block ~ ~ ~ #origami-games:mauraud/air run function origami-games:mauraud/world/overworld/structure/spawn/cave_biome/ice
execute if entity @s[tag=mau_structure_cave_sand] at @s positioned ~ 30 ~ if block ~ ~ ~ #origami-games:mauraud/air run function origami-games:mauraud/world/overworld/structure/spawn/cave_biome/sand
execute if entity @s[tag=mau_structure_spelunker_base] at @s positioned ~ 20 ~ if block ~ ~ ~ #origami-games:mauraud/air run function origami-games:mauraud/world/overworld/structure/spawn/spelunker_base
