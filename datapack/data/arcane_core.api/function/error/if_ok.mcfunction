#> arcane_core.api:error/if_ok
#
# @api
#
# @returns Whether the last potentially erroring operation completed successfully

return run execute if score #arcane_core.internal:error arcane_core.state = #arcane_core.internal:error.ok arcane_core.state
