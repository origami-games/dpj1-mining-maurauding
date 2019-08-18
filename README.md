# Data Packing Jam #1 - Mining and Maurauding
Submission to Data Packing Jam #1  (Theme - Caves/Underground)

## Features
- Custom generation
  - Ice/sand caves spawn occasionally around Y=30
  - 'Spelunker Bases' spawn rarely at Y=20
    - Includes a Spelunker Miner and Spelunker Scientist, with custom trades
  - To see when and where these spawn, run `tag @s add mau_chunk_debug` and load new chunks
- Custom mobs
  - Undead Miner
    - Spawns at the same rate as Zombies below Y=20
    - Drops the Miner's Helmet, which gives the player night vision when equipped
  - Ember Demon
    - Spawns at the same rate as Skeletons below Y=20
  - Ore Spirits
    - Spawn when breaking ore blocks
    - Attack you through blocks
    - Drop their respective ore block and a Spirit Orb (see below)
- Custom Items
  - Spirit Orb
    - Drops from Ore Spirits
    - When dropped with a pickaxe on to a Smithing Table, it infuses with the pickaxe to give it effect powers
      - Haste II
      - Speed II
