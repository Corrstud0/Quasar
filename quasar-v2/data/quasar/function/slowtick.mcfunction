function datapipes_lib:power_transfer/power_tick


#execute if any entity didnt unbind their current entity tag 
execute as @e[tag=quasar_currententity] run function quasar:memory_leak