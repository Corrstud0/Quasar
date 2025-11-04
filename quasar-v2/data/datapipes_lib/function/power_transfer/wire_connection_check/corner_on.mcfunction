setblock ~ ~ ~ red_glazed_terracotta[facing=west]
execute positioned ~1 ~ ~ if block ~ ~ ~ granite_slab[type=double] run function datapipes_lib:power_transfer/wire_connection_check/corner_on
execute positioned ~-1 ~ ~ if block ~ ~ ~ granite_slab[type=double] run function datapipes_lib:power_transfer/wire_connection_check/corner_on
execute positioned ~ ~1 ~ if block ~ ~ ~ granite_slab[type=double] run function datapipes_lib:power_transfer/wire_connection_check/corner_on
execute positioned ~ ~-1 ~ if block ~ ~ ~ granite_slab[type=double] run function datapipes_lib:power_transfer/wire_connection_check/corner_on
execute positioned ~ ~ ~1 if block ~ ~ ~ granite_slab[type=double] run function datapipes_lib:power_transfer/wire_connection_check/corner_on
execute positioned ~ ~ ~-1 if block ~ ~ ~ granite_slab[type=double] run function datapipes_lib:power_transfer/wire_connection_check/corner_on

execute positioned ~1 ~ ~ if block ~ ~ ~ chain[axis=x] rotated 270 0 run function datapipes_lib:power_transfer/wire_connection_check/axis_x_on
execute positioned ~-1 ~ ~ if block ~ ~ ~ chain[axis=x] rotated 90 0 run function datapipes_lib:power_transfer/wire_connection_check/axis_x_on
execute positioned ~ ~1 ~ if block ~ ~ ~ chain[axis=y] rotated 0 -90 run function datapipes_lib:power_transfer/wire_connection_check/axis_y_on
execute positioned ~ ~-1 ~ if block ~ ~ ~ chain[axis=y] rotated 0 90 run function datapipes_lib:power_transfer/wire_connection_check/axis_y_on
execute positioned ~ ~ ~1 if block ~ ~ ~ chain[axis=z] rotated 0 0 run function datapipes_lib:power_transfer/wire_connection_check/axis_z_on
execute positioned ~ ~ ~-1 if block ~ ~ ~ chain[axis=z] rotated 180 0 run function datapipes_lib:power_transfer/wire_connection_check/axis_z_on
