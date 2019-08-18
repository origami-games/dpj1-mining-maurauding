#triggered by structure mauraud/world/structure/spelunker_base

summon villager ~ ~ ~ {DeathLootTable:"origami-games:mauraud/entities/spelunker_miner",CustomName:'{"translate":"entity.mauraud.spelunker_miner"}',Tags:["mau_entity","mau_spelunker"],VillagerData:{profession:"minecraft:toolsmith",level:5,type:"minecraft:plains"},Offers:{Recipes:[{maxUses:999999,buy:{id:"minecraft:diamond_pickaxe",Count:1b},sell:{id:"minecraft:diamond",Count:3b},xp:0},{maxUses:999999,buy:{id:"minecraft:iron_pickaxe",Count:1b},sell:{id:"minecraft:iron_ingot",Count:3b},xp:0},{maxUses:999999,buy:{id:"minecraft:golden_pickaxe",Count:1b},sell:{id:"minecraft:gold_ingot",Count:3b},xp:0},{maxUses:999999,buy:{id:"minecraft:stone_pickaxe",Count:1b},sell:{id:"minecraft:cobblestone",Count:3b},xp:0},{maxUses:999999,buy:{id:"minecraft:wooden_pickaxe",Count:1b},sell:{id:"minecraft:stick",Count:12b},xp:0}]}}

tp @s[type=!player] ~ -512 ~
data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
fill ~ ~ ~ ~ ~ ~ air replace command_block
