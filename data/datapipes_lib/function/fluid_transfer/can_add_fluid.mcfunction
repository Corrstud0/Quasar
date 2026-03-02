$data modify storage datapipes_lib:temp temp set from entity @s data.fluids.tanks[$(tank)].type
$execute store result succeeded datapipes_lib run data modify storage datapipes_lib:temp temp set value '$(type)'
execute if score succeeded datapipes_lib matches 1 run return fail

$execute store result score amount datapipes_lib run data get entity @s data.fluids.tanks[$(tank)].amount
$execute store result score max datapipes_lib run data get entity @s data.fluids.tanks[$(tank)].max
$scoreboard players add amount datapipes_lib $(amount)
execute if score amount datapipes_lib > max datapipes_lib run return fail

return 1