scoreboard players set @s quasar_usedcatspawnegg 0
tag @s add quasar_currententity
#face the player that placed the mb core
execute as @e[type=marker,tag=quasar_multiblockcore,tag=!quasar_multiblock_ready,tag=!quasar_multiblock_active,distance=..10] run rotate @s facing entity @a[tag=quasar_currententity,limit=1] eyes
tag @s remove quasar_currententity
#execute as the multiblock core
execute as @e[type=marker,tag=quasar_multiblockcore,tag=!quasar_multiblock_ready,tag=!quasar_multiblock_active,distance=..10] at @s run function quasar:multiblock_system/position