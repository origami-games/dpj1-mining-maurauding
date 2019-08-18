#player tick
#called by #cardboard:player/tick

execute if entity @s[nbt={SelectedItem:{tag:{origami-games:{mauraud:{spirit_orb:1b}}}}}] run function origami-games:mauraud/item/spirit_orb/pickaxe_effects
