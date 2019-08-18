#apply spirit orb to pickaxe
#@s - spirit orb on smithing table found pickaxe
#called by mauraud/block/smithing_table/drop_craft_checks

execute as @e[type=item,tag=stackat_pickaxe,dx=0,dy=0,dz=0,sort=nearest,limit=1] at @s run function origami-games:mauraud/item/spirit_orb/pickaxe_merge
kill @s[type=!player]
