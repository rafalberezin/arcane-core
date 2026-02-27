#> arcane_core.internal:data/project/register/if_validate_input/main
#
# Validates data against `api::InRegisterProject` schema
#
# Validation order:
# - namespace 				(required, non-empty string)
# - name 					(required, non-empty string)
# - version 				(required, array of exactly 3 non-negative numbers)
# - core_version 			(required, array of exactly 3 non-negative numbers)
# - resourcepack.required 	(required if "resourcepack" present, boolean)
#
# @internal

scoreboard players operation #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.register.project.namespace arcane_core.api.state

execute unless data storage arcane_core.internal:temp /.register.project.namespace run return 0
data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.namespace
execute unless function arcane_core.api:data/if_type/string run return 0
execute unless function arcane_core.api:data/if_considered/positive run return 0

scoreboard players operation #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.register.project.name arcane_core.api.state

execute unless data storage arcane_core.internal:temp /.register.project.name run return 0
data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.name
execute unless function arcane_core.api:data/if_type/string run return 0
execute unless function arcane_core.api:data/if_considered/positive run return 0

scoreboard players operation #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.register.project.version arcane_core.api.state

execute unless data storage arcane_core.internal:temp /.register.project.version[2] run return 0
execute if data storage arcane_core.internal:temp /.register.project.version[3] run return 0

data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.version[0]
execute unless function arcane_core.api:data/if_type/number run return 0
execute unless function arcane_core.api:data/number/if_non_negative run return 0

data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.version[1]
execute unless function arcane_core.api:data/if_type/number run return 0
execute unless function arcane_core.api:data/number/if_non_negative run return 0

data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.version[2]
execute unless function arcane_core.api:data/if_type/number run return 0
execute unless function arcane_core.api:data/number/if_non_negative run return 0

scoreboard players operation #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.register.project.core_version arcane_core.api.state

execute unless data storage arcane_core.internal:temp /.register.project.core_version[2] run return 0
execute if data storage arcane_core.internal:temp /.register.project.core_version[3] run return 0

data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.core_version[0]
execute unless function arcane_core.api:data/if_type/number run return 0
execute unless function arcane_core.api:data/number/if_non_negative run return 0

data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.core_version[1]
execute unless function arcane_core.api:data/if_type/number run return 0
execute unless function arcane_core.api:data/number/if_non_negative run return 0

data modify storage arcane_core.api:io in.any set from storage arcane_core.internal:temp /.register.project.core_version[2]
execute unless function arcane_core.api:data/if_type/number run return 0
execute unless function arcane_core.api:data/number/if_non_negative run return 0

execute if data storage arcane_core.internal:temp /.register.project.resourcepack \
	unless function arcane_core.internal:data/project/register/if_validate_input/resourcepack \
	run return 0

scoreboard players operation #arcane_core.internal:error arcane_core.api.state = #arcane_core.internal:error.ok arcane_core.api.state
return 1
