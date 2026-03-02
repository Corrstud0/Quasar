scoreboard players set $err quasar.error_count 0

execute unless block ^ ^ ^ waxed_oxidized_copper positioned ^ ^ ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^ ^ ^-1 granite_slab[type=double] positioned ^ ^ ^-1 run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:granite_slab}
execute unless block ^ ^ ^1 yellow_glazed_terracotta positioned ^ ^ ^1 run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:yellow_glazed_terracotta}
execute unless block ^1 ^ ^ waxed_oxidized_copper_grate positioned ^1 ^ ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^-1 ^ ^ waxed_oxidized_copper_grate positioned ^-1 ^ ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^-1 ^ ^1 waxed_oxidized_chiseled_copper positioned ^-1 ^ ^1 run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^1 ^ ^1 waxed_oxidized_chiseled_copper positioned ^1 ^ ^1 run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^1 ^1 ^ waxed_oxidized_chiseled_copper positioned ^1 ^1 ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^-1 ^1 ^ waxed_oxidized_chiseled_copper positioned ^-1 ^1 ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^ ^1 ^-1 waxed_oxidized_chiseled_copper positioned ^ ^1 ^-1 run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^1 ^2 ^ waxed_oxidized_copper_grate positioned ^1 ^2 ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^-1 ^2 ^ waxed_oxidized_copper_grate positioned ^-1 ^2 ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^ ^2 ^-1 waxed_oxidized_copper_grate positioned ^ ^2 ^-1 run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:oxidized_copper}
execute unless block ^1 ^3 ^ lightning_rod[facing=up] positioned ^1 ^3 ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:copper_block}
execute unless block ^-1 ^3 ^ lightning_rod[facing=up] positioned ^-1 ^3 ^ run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:copper_block}
execute unless block ^ ^3 ^-1 lightning_rod[facing=up] positioned ^ ^3 ^-1 run function quasar:machines/gravshaft/states/blocks/setup_check/set_error_marker {block:copper_block}


# decide state :]
execute if score $err quasar.error_count matches 0 run scoreboard players set @s quasar.state_A 1
execute if score $err quasar.error_count matches 1.. run scoreboard players operation @s quasar.state_B = $err quasar.error_count

kill @e[tag=quasar.error.marker, distance=..50, type=marker]

function quasar:machines/gravshaft/states/blocks/setup_check/finish
