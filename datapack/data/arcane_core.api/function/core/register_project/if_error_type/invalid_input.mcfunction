#> arcane_core.api:core/register_project/if_error_type/invalid_input
#
# @api
#
# @returns
# 	Whether the last error is related to the input of
# 	`arcane_core.api:core/register_project/if_register`
# 	being invalid

execute if score #arcane_core.internal:error arcane_core.state >= #arcane_core.internal:error_group.register_project.invalid_input.start arcane_core.state \
	if score #arcane_core.internal:error arcane_core.state <= #arcane_core.internal:error_group.register_project.invalid_input.end arcane_core.state \
	run return 1

return 0
