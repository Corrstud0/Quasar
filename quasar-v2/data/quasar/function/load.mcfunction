scoreboard objectives add quasar_states dummy
scoreboard objectives add quasar_state_A dummy
scoreboard objectives add quasar_state_B dummy
scoreboard objectives add quasar_state_C dummy
scoreboard objectives add quasar_machine_id dummy
scoreboard objectives add quasar_linked_machine_id dummy
scoreboard objectives add quasar_multiblock_tier dummy
scoreboard objectives add quasar_usedcatspawnegg minecraft.used:minecraft.cat_spawn_egg

#reset multiblocks incase of a mistake in code
data remove storage quasar:constants multiblock_core

# numbers for calculations
scoreboard players set 2 quasar_states 2

#load the config
function quasar:config

tellraw @a "[QUASAR] Datapack Loaded!"


#custom multiblock cores 

#example
data modify storage quasar:constants multiblock_core[{tier:"if score @s quasar_multiblock_tier matches 1",check:"if block ^1 ^ ^ diamond_block if block ^-1 ^ ^ diamond_block"}].function set value 'run function quasar:machines/test/setup'

data modify storage quasar:constants multiblock_core[{tier:"if score @s quasar_multiblock_tier matches 1",check:"if block ^1 ^ ^ diamond_block if block ^-1 ^ ^1 diamond_block"}].function set value 'run function quasar:machines/test2/setup'

data modify storage quasar:constants multiblock_core[{tier:"if score @s quasar_multiblock_tier matches 3",check:"if block ~ ~ ~ observer[facing=up] if block ^1 ^1 ^ lodestone if block ^-1 ^1 ^ lodestone if block ^ ^1 ^ lodestone"}].function set value 'run function quasar:machines/mmsa/setup'
