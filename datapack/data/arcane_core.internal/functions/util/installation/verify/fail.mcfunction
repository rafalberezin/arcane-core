#> arcane_core.internal:util/installation/verify/fail
#
# @internal

data modify storage arcane_core.internal:core root.installation.warning append value {}

data modify storage arcane_core.internal:core root.installation.warning[-1].project_name set from storage arcane_core.internal:temp root.installation.project_name

execute store result storage arcane_core.internal:core root.installation.warning[-1].major.min int 1 run scoreboard players get #arcane_core.internal:temp.installation.major arcane_core.state
scoreboard players add #arcane_core.internal:temp.installation.major arcane_core.state 1
execute store result storage arcane_core.internal:core root.installation.warning[-1].major.max int 1 run scoreboard players get #arcane_core.internal:temp.installation.major arcane_core.state

execute store result storage arcane_core.internal:core root.installation.warning[-1].minor int 1 run scoreboard players get #arcane_core.internal:temp.installation.minor arcane_core.state
execute store result storage arcane_core.internal:core root.installation.warning[-1].patch int 1 run scoreboard players get #arcane_core.internal:temp.installation.patch arcane_core.state

return fail
