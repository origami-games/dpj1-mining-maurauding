#clock tick (16/t)
#called by mauraud/tick

#miner's helmet
effect give @a[nbt={Inventory:[{Slot:103b,tag:{origami-games:{mauraud:{item:"miner_helmet"}}}}]}] night_vision 1 0 true

#item crafting check
execute as @e[type=item] at @s if block ~ ~-1 ~ smithing_table run function origami-games:mauraud/block/smithing_table/drop_craft_checks

#reset score
scoreboard players reset main_16 mau_clock
