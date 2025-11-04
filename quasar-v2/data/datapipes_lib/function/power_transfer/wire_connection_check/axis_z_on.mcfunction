setblock ~ ~ ~ red_glazed_terracotta[facing=south]
execute positioned ^ ^ ^1 if block ~ ~ ~ chain[axis=z] run return run function datapipes_lib:power_transfer/wire_connection_check/axis_z_on
execute positioned ^ ^ ^1 if block ~ ~ ~ granite_slab[type=double] run function datapipes_lib:power_transfer/wire_connection_check/corner_on