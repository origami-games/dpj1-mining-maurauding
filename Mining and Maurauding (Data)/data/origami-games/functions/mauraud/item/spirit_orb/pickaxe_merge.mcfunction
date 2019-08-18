#apply spirit orb data to pickaxe
#@s - pickaxe crafting with spirit orb
#called by mauraud/item/spirit_orb/pickaxe_apply

data merge entity @s {Item:{tag:{origami-games:{mauraud:{spirit_orb:1b}},display:{Lore:['{"translate":"item.mauraud.spirit_orb.pickaxe.lore"}']},CustomModelData:1}},Motion:[0.0d,0.3d,0.0d],PickupDelay:11s,CustomNameVisible:1}

data merge entity @s[nbt={Item:{id:"minecraft:wooden_pickaxe"}}] {CustomName:'{"translate":"item.minecraft.wooden_pickaxe"}'}
data merge entity @s[nbt={Item:{id:"minecraft:stone_pickaxe"}}] {CustomName:'{"translate":"item.minecraft.stone_pickaxe"}'}
data merge entity @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] {CustomName:'{"translate":"item.minecraft.iron_pickaxe"}'}
data merge entity @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] {CustomName:'{"translate":"item.minecraft.golden_pickaxe"}'}
data merge entity @s[nbt={Item:{id:"minecraft:diamond_pickaxe"}}] {CustomName:'{"translate":"item.minecraft.diamond_pickaxe"}'}

playsound entity.firework_rocket.blast player @a[distance=..20] ~ ~ ~ 1 1 1
particle firework ~ ~ ~ 0 0 0 .05 20 normal @a
