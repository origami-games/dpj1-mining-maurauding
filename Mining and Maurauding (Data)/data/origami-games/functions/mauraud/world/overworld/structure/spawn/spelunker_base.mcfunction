#spawn spelunker base
#called by mauraud/world/overworld/structure/spawn

setblock ~ ~ ~ structure_block{posY:0,mode:"LOAD",name:"origami-games:mauraud/world/structure/spelunker_base"}
setblock ~ ~1 ~ redstone_block
summon area_effect_cloud ~ ~ ~ {Tags:["mau_entity","mau_structure_remove_tech"]}

#notify debug
function origami-games:mauraud/world/overworld/structure/spawn/notification
