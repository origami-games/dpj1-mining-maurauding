#biome check
#@s - entity found deep cave
#called by mauraud/entity/spawning/spawn

execute if entity @s[type=zombie] at @s run function origami-games:mauraud/entity/summon/undead_miner
execute if entity @s[type=skeleton,scores={mau_biome=1}] at @s run function origami-games:mauraud/entity/summon/ember_demon

#stop checking
tag @s remove mau_replace
