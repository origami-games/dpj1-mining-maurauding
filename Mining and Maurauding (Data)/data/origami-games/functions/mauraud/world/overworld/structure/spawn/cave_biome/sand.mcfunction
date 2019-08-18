#spawn sand cave
#called by mauraud/world/overworld/structure/spawn

#replace blocks
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 smooth_sandstone replace andesite
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 sandstone replace stone
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 sand replace dirt
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 sandstone replace diorite
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 sandstone replace granite
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 sandstone replace gravel
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 obsidian replace lava

#replace loot tables
execute as @e[type=chest_minecart,distance=..7] run data merge entity @s {LootTable:"origami-games:mauraud/chests/cave_biome/sand/abandoned_mineshaft"}

#notify debug
function origami-games:mauraud/world/overworld/structure/spawn/notification
