#debug notification called by structure spawns
tellraw @a[tag=mau_chunk_debug] [{"nbt":"Tags","entity":"@s","interpret":true},": ",{"nbt":"Pos[0]","entity":"@s"}," ",{"nbt":"Pos[2]","entity":"@s"}]
