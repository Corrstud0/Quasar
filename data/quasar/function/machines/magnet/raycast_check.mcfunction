execute positioned ^ ^ ^1 if block ~ ~ ~ air run execute unless score @s magnet_distance matches 15 run return run function quasar:machines/magnet/raycast_check

execute if entity @e[tag=quasar.magnet,distance=..0.05] run tag @s add quasar.magnet_connected
