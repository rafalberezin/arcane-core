#> arcane_core.internal:data/load_report/compat_display_iterator
#
# @internal

tellraw @s [{ "storage": "arcane_core.internal:temp", "nbt": "/.any[0]", "interpret": true}]
data remove storage arcane_core.internal:temp /.any[0]
execute if data storage arcane_core.internal:temp /.any[0] run function arcane_core.internal:data/load_report/compat_display_iterator
