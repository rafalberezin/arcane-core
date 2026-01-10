#> arcane_core.internal:data/load_report/compose/add_entry
#
# @internal

function arcane_core.internal:data/load_report/compose_entry/start_entry
function arcane_core.internal:data/load_report/compose_entry/compat/adaptive_newline

function arcane_core.internal:data/load_report/compose_entry/add_name

execute unless score #arcane_core.internal:error arcane_core.state = #arcane_core.internal:error.ok arcane_core.state \
	run function arcane_core.internal:data/load_report/compose_entry/add_version_range

function arcane_core.internal:data/load_report/compose_entry/add_version

execute if data storage arcane_core.internal:temp /.phase.register_project.project.resourcepack \
	run function arcane_core.internal:data/load_report/compose_entry/add_resourcepack_notice

execute if score #arcane_core.internal:error arcane_core.state = #arcane_core.internal:error.ok arcane_core.state \
	run return run data modify storage arcane_core.internal:temp /.phase.register_project.success_blob append from storage arcane_core.internal:temp /.text_line

data modify storage arcane_core.internal:temp /.phase.register_project.warning_blob append from storage arcane_core.internal:temp /.text_line
return 0
