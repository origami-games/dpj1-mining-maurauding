#triggered by structure mauraud/world/structure/spelunker_base

summon villager ~ ~ ~ {DeathLootTable:"origami-games:mauraud/entities/spelunker_scientist",CustomName:'{"translate":"entity.mauraud.spelunker_scientist"}',Tags:["mau_entity","mau_spelunker"],VillagerData:{profession:"minecraft:cartographer",level:5,type:"minecraft:plains"},Offers:{Recipes:[{maxUses:999999,buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:brewing_stand",Count:1b},xp:0},{maxUses:999999,buy:{id:"minecraft:blaze_rod",Count:1b},buyB:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:blaze_powder",Count:4b},xp:0},{maxUses:999999,buy:{id:"minecraft:brown_mushroom",Count:1b},buyB:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:red_mushroom",Count:1b},xp:0},{maxUses:999999,buy:{id:"minecraft:red_mushroom",Count:1b},buyB:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:brown_mushroom",Count:1b},xp:0}]}}

tp @s[type=!player] ~ -512 ~
data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
fill ~ ~ ~ ~ ~ ~ air replace command_block
