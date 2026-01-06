#> arcane_core.internal:data/project/register/if_validate_version
#
# @internal

scoreboard players operation #arcane_core.internal:error arcane_core.state = #arcane_core.internal:error.register_project.incompatible_version arcane_core.state

execute store result score #arcane_core.internal:temp.major arcane_core.state run data get storage arcane_core.internal:temp /.phase.register_project.project.core_version[0]
execute store result score #arcane_core.internal:temp.minor arcane_core.state run data get storage arcane_core.internal:temp /.phase.register_project.project.core_version[1]
execute store result score #arcane_core.internal:temp.patch arcane_core.state run data get storage arcane_core.internal:temp /.phase.register_project.project.core_version[2]

execute unless score #arcane_core.internal:temp.major arcane_core.state = #arcane_core.internal:core.version.major arcane_core.state \
	run return run function arcane_core.internal:data/load_report/compose/add_entry

execute if score #arcane_core.internal:temp.minor arcane_core.state > #arcane_core.internal:core.version.minor arcane_core.state \
	run return run function arcane_core.internal:data/load_report/compose/add_entry

execute if score #arcane_core.internal:temp.minor arcane_core.state = #arcane_core.internal:core.version.minor arcane_core.state \
		if score #arcane_core.internal:temp.patch arcane_core.state > #arcane_core.internal:core.version.patch arcane_core.state \
		run return run function arcane_core.internal:data/load_report/compose/add_entry

scoreboard players operation #arcane_core.internal:error arcane_core.state = #arcane_core.internal:error.ok arcane_core.state
function arcane_core.internal:data/load_report/compose/add_entry

return 1
