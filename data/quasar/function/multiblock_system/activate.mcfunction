tag @s add quasar.multiblock_active
tag @s remove quasar.multiblock_ready

playsound block.note_block.bell master @a[distance=..10] ~ ~ ~ 2 1

data modify storage quasar:temp temp set from storage quasar:constants multiblock_core
function quasar:multiblock_system/checks with storage quasar:temp temp[0]