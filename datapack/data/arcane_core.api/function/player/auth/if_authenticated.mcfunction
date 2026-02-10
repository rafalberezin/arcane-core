#> arcane_core.api:player/auth/if_authenticated
#
# Check if the executing player is authenticated as an operator.
# (more specifically permission level 2)
#
# @api
#
# @context player
# @returns Whether the player is authenticated.

return run execute if score @s arcane_core.internal.auth.token = #arcane_core.internal:core.auth.token arcane_core.api.state
