
#reset slowtick
execute if score slowtick quasar_states >= slowtickconst quasar_states run scoreboard players set slowtick quasar_states 0

#slowtick function
scoreboard players add slowtick quasar_states 1
execute if score slowtick quasar_states >= slowtickconst quasar_states run function quasar:slowtick

#multiblock
execute as @e[type=marker,tag=quasar_multiblockcore] at @s run function quasar:multiblock_system/run_function with entity @s data.quasar.
#slowtick multiblock
execute if score slowtick quasar_states >= slowtickconst quasar_states as @e[type=marker,tag=quasar_multiblockcore] at @s run function quasar:multiblock_system/slow_tick

#as player
execute as @a at @s run function quasar:entity/player/as_player

# imma do this its prolly needed for datalib sk
scoreboard players operation halfslowtick quasar_states = slowtickconst quasar_states
scoreboard players operation halfslowtick quasar_states /= 2 quasar_states

execute if score slowtick quasar_states = halfslowtick quasar_states run function datapipes_lib:fluid_transfer/fluid_tick

