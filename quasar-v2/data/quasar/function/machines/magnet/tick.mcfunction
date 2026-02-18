scoreboard players set @s magnet_redstone 0
function quasar:machines/magnet/raycast_check
function quasar:machines/magnet/redstone_check
execute if entity @s[tag=quasar.magnet_connected] run function quasar:machines/magnet/connected
