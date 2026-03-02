setblock ~ ~ ~ chain[axis=z]
execute positioned ^ ^ ^1 if block ~ ~ ~ red_glazed_terracotta[facing=south] run return run function datapipes_lib:power_transfer/wire_connection_check/axis_z_off
execute positioned ^ ^ ^1 if block ~ ~ ~ red_glazed_terracotta[facing=west] run function datapipes_lib:power_transfer/wire_connection_check/corner_off