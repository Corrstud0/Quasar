
execute if entity @s[tag=quasar_multiblock_active] if block ~ ~ ~ air run return run function quasar:multiblock_system/destroy

# Run through all potential multiblocks

execute if entity @s[tag=quasar_multiblock_ready] unless block ~ ~ ~ air run function quasar:multiblock_system/activate