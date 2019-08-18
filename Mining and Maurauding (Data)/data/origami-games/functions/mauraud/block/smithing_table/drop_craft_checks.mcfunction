#items on smithing table
#called by mauraud/clock16

tag @s[nbt={Item:{id:"minecraft:wooden_pickaxe"}}] add stackat_pickaxe
tag @s[nbt={Item:{id:"minecraft:stone_pickaxe"}}] add stackat_pickaxe
tag @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] add stackat_pickaxe
tag @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] add stackat_pickaxe
tag @s[nbt={Item:{id:"minecraft:diamond_pickaxe"}}] add stackat_pickaxe

execute if entity @s[nbt={Item:{tag:{origami-games:{mauraud:{item:"spirit_orb"}}},Count:1b}}] align xyz if entity @e[dx=0,dy=0,dz=0,tag=stackat_pickaxe,nbt=!{Item:{tag:{origami-games:{mauraud:{spirit_orb:1b}}}}}] run function origami-games:mauraud/item/spirit_orb/pickaxe_apply
