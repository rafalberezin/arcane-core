#> arcane_core.internal:data/load_report/compose/main
#
# @internal

function arcane_core.internal:data/load_report/compose/start_header

execute if data storage arcane_core.internal:core /.core_versions[1] \
	run function arcane_core.internal:data/load_report/compose/add_core_version_warning/main

execute if data storage arcane_core.internal:temp /.phase.register_project.success_blob[0] \
	run function arcane_core.internal:data/load_report/compose/add_success_section

execute if data storage arcane_core.internal:temp /.phase.register_project.warning_blob[0] \
	run function arcane_core.internal:data/load_report/compose/add_warning_section

function arcane_core.internal:data/load_report/compose/add_footer

data remove storage arcane_core.internal:temp /.phase.register_project
