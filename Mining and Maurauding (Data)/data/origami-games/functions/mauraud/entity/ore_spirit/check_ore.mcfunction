#@s - ore spirit stick dropped from loot table

#audiovisuals
particle crit ~ ~ ~ .5 .5 .5 0 30 normal @a
particle enchanted_hit ~ ~ ~ .5 .5 .5 0 30 normal @a
playsound entity.zombie.converted_to_drowned hostile @a[distance=..20] ~ ~ ~ 1 2 1

#summon base
function origami-games:mauraud/entity/summon/ore_spirit
#set ore
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{spirit_type:"iron"}}}}}] run replaceitem entity @e[type=vex,tag=mau_ore_spirit,sort=nearest,limit=1] armor.head iron_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{spirit_type:"gold"}}}}}] run replaceitem entity @e[type=vex,tag=mau_ore_spirit,sort=nearest,limit=1] armor.head gold_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{spirit_type:"coal"}}}}}] run replaceitem entity @e[type=vex,tag=mau_ore_spirit,sort=nearest,limit=1] armor.head coal_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{spirit_type:"lapis"}}}}}] run replaceitem entity @e[type=vex,tag=mau_ore_spirit,sort=nearest,limit=1] armor.head lapis_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{spirit_type:"diamond"}}}}}] run replaceitem entity @e[type=vex,tag=mau_ore_spirit,sort=nearest,limit=1] armor.head diamond_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{spirit_type:"redstone"}}}}}] run replaceitem entity @e[type=vex,tag=mau_ore_spirit,sort=nearest,limit=1] armor.head redstone_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{spirit_type:"emerald"}}}}}] run replaceitem entity @e[type=vex,tag=mau_ore_spirit,sort=nearest,limit=1] armor.head emerald_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{spirit_type:"nether_quartz"}}}}}] run replaceitem entity @e[type=vex,tag=mau_ore_spirit,sort=nearest,limit=1] armor.head nether_quartz_ore

#kill entity
kill @s[type=!player]
