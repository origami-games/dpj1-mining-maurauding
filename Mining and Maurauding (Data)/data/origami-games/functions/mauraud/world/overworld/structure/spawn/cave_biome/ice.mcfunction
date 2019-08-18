#spawn ice cave
#called by mauraud/world/overworld/structure/spawn

#replace blocks
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 ice replace andesite
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 packed_ice replace stone
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 blue_ice replace dirt
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 snow_block replace diorite
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 snow_block replace granite
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 snow_block replace gravel
fill ~6 ~6 ~6 ~-6 ~-6 ~-6 obsidian replace lava

#replace loot tables
execute as @e[type=chest_minecart,distance=..7] run data merge entity @s {LootTable:"origami-games:mauraud/chests/cave_biome/ice/abandoned_mineshaft"}

#notify debug
function origami-games:mauraud/world/overworld/structure/spawn/notification
