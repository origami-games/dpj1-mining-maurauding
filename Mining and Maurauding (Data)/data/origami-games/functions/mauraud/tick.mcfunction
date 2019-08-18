#base tick
#called by #cardboard:tick

#clocks
scoreboard players add world_4 mau_clock 1
execute if score world_4 mau_clock matches 4.. run function origami-games:mauraud/world/clock4
scoreboard players add main_16 mau_clock 1
execute if score main_16 mau_clock matches 4.. run function origami-games:mauraud/clock16

#world gen
## remove technical blocks
execute at @e[type=area_effect_cloud,tag=mau_structure_remove_tech] run fill ~ ~ ~ ~ ~1 ~ air

#mobs
## spawning
### general
execute as @e[type=!#origami-games:mauraud/sprite,type=!player,tag=!mau_entity,tag=!mau_found] at @s run function origami-games:mauraud/entity/spawning/check
### ore spirits
execute as @e[type=item,nbt={Item:{tag:{origami-games:{mauraud:{function:"ore_spirit"}}}}}] at @s run function origami-games:mauraud/entity/ore_spirit/check_ore

#items
## player head placement recovery
execute as @e[type=item,tag=!mau_head,tag=!mau_entity,nbt={Item:{id:"minecraft:player_head"}}] if data entity @s Item.tag unless data entity @s Item.tag.origami-games unless data entity @s Item.tag.SkullOwner.Name at @s run function origami-games:mauraud/item/recover_player_head
