setblock ~ ~ ~ granite_slab[type=double]
execute positioned ~1 ~ ~ if block ~ ~ ~ red_glazed_terracotta[facing=west] run function datapipes_lib:power_transfer/wire_connection_check/corner_off
execute positioned ~-1 ~ ~ if block ~ ~ ~ red_glazed_terracotta[facing=west] run function datapipes_lib:power_transfer/wire_connection_check/corner_off
execute positioned ~ ~1 ~ if block ~ ~ ~ red_glazed_terracotta[facing=west] run function datapipes_lib:power_transfer/wire_connection_check/corner_off
execute positioned ~ ~-1 ~ if block ~ ~ ~ red_glazed_terracotta[facing=west] run function datapipes_lib:power_transfer/wire_connection_check/corner_off
execute positioned ~ ~ ~1 if block ~ ~ ~ red_glazed_terracotta[facing=west] run function datapipes_lib:power_transfer/wire_connection_check/corner_off
execute positioned ~ ~ ~-1 if block ~ ~ ~ red_glazed_terracotta[facing=west] run function datapipes_lib:power_transfer/wire_connection_check/corner_off

execute positioned ~1 ~ ~ if block ~ ~ ~ red_glazed_terracotta[facing=east] rotated 270 0 run function datapipes_lib:power_transfer/wire_connection_check/axis_x_off
execute positioned ~-1 ~ ~ if block ~ ~ ~ red_glazed_terracotta[facing=east] rotated 90 0 run function datapipes_lib:power_transfer/wire_connection_check/axis_x_off
execute positioned ~ ~1 ~ if block ~ ~ ~ red_glazed_terracotta[facing=north] rotated 0 -90 run function datapipes_lib:power_transfer/wire_connection_check/axis_y_off
execute positioned ~ ~-1 ~ if block ~ ~ ~ red_glazed_terracotta[facing=north] rotated 0 90 run function datapipes_lib:power_transfer/wire_connection_check/axis_y_off
execute positioned ~ ~ ~1 if block ~ ~ ~ red_glazed_terracotta[facing=south] rotated 0 0 run function datapipes_lib:power_transfer/wire_connection_check/axis_z_off
execute positioned ~ ~ ~-1 if block ~ ~ ~ red_glazed_terracotta[facing=south] rotated 180 0 run function datapipes_lib:power_transfer/wire_connection_check/axis_z_off
