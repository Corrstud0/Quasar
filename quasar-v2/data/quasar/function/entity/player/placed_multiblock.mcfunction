scoreboard players set @s quasar.usedcatspawnegg 0
tag @s add quasar.currententity
#face the player that placed the mb core
execute as @e[type=marker, tag=quasar.multiblockcore, tag=!quasar.multiblock_ready, tag=!quasar.multiblock_active, distance=..10] run rotate @s facing entity @a[tag=quasar.currententity, limit=1] eyes
tag @s remove quasar.currententity
#execute as the multiblock core
execute as @e[type=marker, tag=quasar.multiblockcore, tag=!quasar.multiblock_ready, tag=!quasar.multiblock_active, distance=..10] at @s run function quasar:multiblock_system/position