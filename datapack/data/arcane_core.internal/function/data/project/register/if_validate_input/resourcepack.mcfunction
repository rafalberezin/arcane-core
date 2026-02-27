#> arcane_core.internal:data/project/register/if_validate_input/resourcepack
#
# @internal

scoreboard players operation #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.register.project.resourcepack.required arcane_core.api.state

execute unless data storage arcane_core.internal:temp /.register.project.resourcepack.required run return 0

data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.resourcepack.required
return run function arcane_core.api:data/if_type/boolean
