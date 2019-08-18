#replace broken placed player heads
#@s - @e[type=item,tag=!mau_head,tag=!mau_entity,nbt={Item:{id:"minecraft:player_head"}}]
#called by mauraud/tick

execute if entity @s[nbt={Item:{tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE1NjYxMjMwNDQwMTYsInByb2ZpbGVJZCI6IjUwYzdlN2M1MjQwNzQxMDI4NzVmZTRiMWY0OWVhNjFhIiwicHJvZmlsZU5hbWUiOiJBbmRhbnRlTUMiLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzk4NmY4NzczNzJlYzRlNzMzNzMyMjBhOWVlMTAxY2EwNmZjZTg4YmMyZDFlNzFiMjUxODAzZTUyOTVmYTNhM2UifX19"}]}}}}}] run loot spawn ~ ~ ~ loot origami-games:mauraud/items/spirit_orb

#kill entity
execute unless data entity @s Item.tag.origami-games run kill @s[type=!player]
tag @s add mau_head
