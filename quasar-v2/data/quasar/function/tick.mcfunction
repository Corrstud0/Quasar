
#reset slowtick
execute if score slowtick quasar.states >= slowtickconst quasar.states run scoreboard players set slowtick quasar.states 0

#slowtick function
scoreboard players add slowtick quasar.states 1
execute if score slowtick quasar.states >= slowtickconst quasar.states run function quasar:slowtick

#multiblock
execute as @e[type=marker,tag=quasar.multiblockcore] at @s run function quasar:multiblock_system/run_function with entity @s data.quasar.
#slowtick multiblock
execute if score slowtick quasar.states >= slowtickconst quasar.states as @e[type=marker,tag=quasar.multiblockcore] at @s run function quasar:multiblock_system/slow_tick

#as player
execute as @a at @s run function quasar:entity/player/as_player

# imma do this its prolly needed for datalib sk
scoreboard players operation halfslowtick quasar.states = slowtickconst quasar.states
scoreboard players operation halfslowtick quasar.states /= 2 quasar.states

execute if score slowtick quasar.states = halfslowtick quasar.states run function datapipes_lib:fluid_transfer/fluid_tick

