#@s - mob determined custom
#called by mauraud/entity/spawning/check

#biome checks
tag @s add mau_replace

execute store success score @s mau_biome run clone ~-5 ~-1 ~-5 ~5 ~3 ~5 ~-5 ~-1 ~-5 filtered lava force

execute positioned ~ 0 ~ if entity @s[distance=..20] run function origami-games:mauraud/entity/spawning/biome/deep_cave
execute positioned ~ 0 ~ if entity @s[tag=mau_replace,distance=..40] run function origami-games:mauraud/entity/spawning/biome/cave

tag @s remove mau_replace
