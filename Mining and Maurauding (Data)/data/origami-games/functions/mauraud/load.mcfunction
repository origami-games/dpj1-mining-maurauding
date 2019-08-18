#runs on load
#called by #cardboard:load

#notify load
tellraw @a [{"text":"Mauraud: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://origami-games.github.io/mauraud"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say Mauraud: Loaded

#initialise scoreboards
scoreboard objectives add mau_config dummy
execute unless score world_generation mau_config matches 0..1 run scoreboard players set world_generation mau_config 1

scoreboard objectives add mau_clock dummy
scoreboard objectives add mau_world_gen dummy
scoreboard objectives add mau_biome dummy
