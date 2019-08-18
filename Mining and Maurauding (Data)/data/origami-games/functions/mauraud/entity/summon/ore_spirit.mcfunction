#called by launch/entity/ore_spirit/check_ore

summon vex ~ ~ ~ {HandItems:[{id:iron_pickaxe,Count:1},{}],HandDropChances:[-1.0F,-1.0F],ArmorDropChances:[-1.0F,-1.0F,-1.0F,1.0F],ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b,Amplifier:0}],DeathLootTable:"origami-games:mauraud/entities/ore_spirit",CustomName:'{"translate":"entity.mauraud.ore_spirit"}',Tags:["mau_entity","mau_ore_spirit"],Attributes:[{Name:"generic.maxHealth",Base:30}],Health:30}

tp @s[type=!player] ~ -512 ~
data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
fill ~ ~ ~ ~ ~ ~ air replace command_block
