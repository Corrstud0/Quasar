scoreboard objectives add quasar.states dummy
scoreboard objectives add quasar.state_A dummy
scoreboard objectives add quasar.state_B dummy
scoreboard objectives add quasar.state_C dummy
scoreboard objectives add quasar.machine_id dummy
scoreboard objectives add quasar.linked_machine_id dummy
scoreboard objectives add quasar.multiblock_tier dummy
scoreboard objectives add quasar.usedcatspawnegg minecraft.used:minecraft.cat_spawn_egg

#reset multiblocks incase of a mistake in code
data remove storage quasar:constants multiblock_core

# numbers for calculations
scoreboard players set 2 quasar.states 2

#load the config
function quasar:config

tellraw @a "[QUASAR] Datapack Loaded!"


#custom multiblock cores 

#example
data modify storage quasar:constants multiblock_core[{tier: "if score @s quasar.multiblock_tier matches 1", check: "if block ^1 ^ ^ diamond_block if block ^-1 ^ ^ diamond_block"}].function set value 'run function quasar:machines/test/setup'

data modify storage quasar:constants multiblock_core[{tier: "if score @s quasar.multiblock_tier matches 1", check: "if block ^ ^ ^ dispenser"}].function set value 'run function quasar:machines/magnet/setup'

data modify storage quasar:constants multiblock_core[{tier: "if score @s quasar.multiblock_tier matches 1", check: "if block ^1 ^ ^ diamond_block if block ^-1 ^ ^1 diamond_block"}].function set value 'run function quasar:machines/test2/setup'

data modify storage quasar:constants multiblock_core[{tier: "if score @s quasar.multiblock_tier matches 3", check: "if block ~ ~ ~ observer[facing=up] if block ^1 ^1 ^ lodestone if block ^-1 ^1 ^ lodestone if block ^ ^1 ^ lodestone"}].function set value 'run function quasar:machines/mmsa/setup'

