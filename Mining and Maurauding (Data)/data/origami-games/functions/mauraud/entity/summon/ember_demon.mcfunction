#called by launch/entity/spawning/biome/deep_cave

summon blaze ~ ~ ~ {ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b,Amplifier:0}],DeathLootTable:"origami-games:mauraud/entities/ember_demon",CustomName:'{"translate":"entity.mauraud.ember_demon"}',Tags:["mau_entity","mau_ember_demon"],Attributes:[{Name:"generic.maxHealth",Base:20}],Health:20}

tp @s[type=!player] ~ -512 ~
data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
fill ~ ~ ~ ~ ~ ~ air replace command_block
