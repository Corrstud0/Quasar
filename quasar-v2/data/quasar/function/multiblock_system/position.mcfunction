# align the marker
execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5

# check if any other markers are on the same spot
execute at @s if entity @e[type=marker,tag=quasar_multiblockcore,tag=quasar_multiblock_ready,distance=..0.1] run return run function quasar:multiblock_system/destroy
execute at @s if entity @e[type=marker,tag=quasar_multiblockcore,tag=quasar_multiblock_active,distance=..0.1] run return run function quasar:multiblock_system/destroy

# tier checks
execute if entity @s[tag=quasar_tier1] run scoreboard players set @s quasar_multiblock_tier 1
execute if entity @s[tag=quasar_tier2] run scoreboard players set @s quasar_multiblock_tier 2
execute if entity @s[tag=quasar_tier3] run scoreboard players set @s quasar_multiblock_tier 3
execute if entity @s[tag=quasar_tier4] run scoreboard players set @s quasar_multiblock_tier 4
execute if entity @s[tag=quasar_tier5] run scoreboard players set @s quasar_multiblock_tier 5

# rotate to an axis
execute store result score rotation_x quasar_states run data get entity @s Rotation[0] 1
execute at @s run function quasar:multiblock_system/rotate

# asign a unique number to the marker
scoreboard players add multiblock_id quasar_states 1
scoreboard players operation @s quasar_machine_id = multiblock_id quasar_states
execute store result entity @s data.quasar.machine_id int 1 run scoreboard players get @s quasar_machine_id
data modify storage quasar:temp args set value {arg1:"tag @s add quasar_machineid_"}
execute store result storage quasar:temp args.arg2 int 1 run scoreboard players get @s quasar_machine_id
function datapipes_lib:require/with_args/2 with storage quasar:temp args

# tell the function the mb core is ready to use
tag @s add quasar_multiblock_ready