#> arcane_core.api:core/register_project/if_error_type/incompatible_version
#
# @api
#
# @returns
# 	Whether the last error is the "incompatible version" error
# 	of the `arcane_core.api:core/register_project/if_register` call.

return run execute if score #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.register.project.incompatible_version arcane_core.api.state
