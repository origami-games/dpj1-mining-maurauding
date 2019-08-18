#called by launch/entity/spawning/biome/deep_cave

summon zombie ~ ~ ~ {HandItems:[{id:iron_pickaxe,Count:1},{}],HandDropChances:[0.2F,-1.0F],ArmorDropChances:[-1.0F,-1.0F,-1.0F,1.0F],DeathLootTable:"origami-games:mauraud/entities/undead_miner",CustomName:'{"translate":"entity.mauraud.undead_miner"}',Tags:["mau_entity","mau_undead_miner"]}
loot replace entity @e[type=zombie,tag=mau_undead_miner,distance=0] armor.head loot origami-games:mauraud/items/miner_helmet

tp @s[type=!player] ~ -512 ~
data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
fill ~ ~ ~ ~ ~ ~ air replace command_block
