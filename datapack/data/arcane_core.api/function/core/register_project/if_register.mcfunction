#> arcane_core.api:core/register_project/if_register
#
# Register your project with the framework.
#
# This function returns the success status of the registration
# for use in `execute if/unless function ...` command chain.
#
# This function will validate the compatibility of the specified
# framework version with the one installed by the user.
#
# It will also add an entry for your project to the Arcane Core initialization summary
# along with the compatibility status, and missing resource pack warning if specified.
#
# If your project uses a resourcepack, Arcane Core can display a warning to the players
# who don't have it enabled. This feature requires you to do 2 things:
# 1. Specify the `in.register_project.resourcepack.required` to a boolean value.
#    This incates whether your resourcepack is required or optional but recommended.
# 2. Create a translation key in you resourcepack (inside `lang/en_us.json`)
#    with name "<namespace>:util.empty" that maps to an empty string,
#    where "<namespace>" is the same as specified in `in.register_project.namespace` input.
#    For example, if you specified namespace "my_project",
#    the translation key would be named "my_project:util.empty"
#
# Additionally if you set `core.register_project.resourcepack.optional` input storage path
# to any data, the resourcepack missing warning will specify that it's optional.
#
# The storage input data must be set before calling this function.
#
# Full usage example:
#
# (in your arcane core load function)
# ```
# data modify storage arcane_core.api:io in.core.register_project set value { \
# 	namespace: "my_project", \
# 	name: "My Project Name", \
# 	core_version: [0, 1, 0], \
# 	version: "1.0.0",
# 	resourcepack: { \
# 		required: true \
# 	} \
# }
#
# execute unless function arcane_core.api:core/register_project/if_register run function your_project:handle_error
# ```
#
# (in your resource pack's `lang/en_us.json`)
# ```
# {
# 	"my_project:util.empty": ""
# }
# ```
#
# If you intend to store this function's result,
# you should store the "result" value instead of "success".
#
# @api
#
# @context #arcane_core.api:core/load
#
# @input
# 	storage arcane_core.api:io
# 		in.core.register_project.namespace string
# 			The namespace of your project.
#
# 		in.core.register_project.name string
# 			Display name of your project.
#
# 		in.core.register_project.core_version int[]
# 			Minimum version of Arcane Core.
# 			The array must contain 3 elements, the major, minor, and patch numbers.
# 			Don't know what these names mean? See https://semver.org/
#
# 		in.core.register_project.version string
# 			[OPTIONAL] Version of your project.
#
# 		in.core.register_project.resourcepack.required boolean
# 			[OPTIONAL] The "resourcepack" key is optional.
# 			When present it indicates that your project uses a resourcepack,
# 			and the "required" key must be set, which indicates
# 			whether this resourcepack is required or optional.
# 			Additionally you need to add a translation key 
#
# @returns Whether the registration was successful and the required
# 		   framework version is compatible with the installed one.

data remove storage arcane_core.internal:temp /.phase.register_project.project
data modify storage arcane_core.internal:temp /.phase.register_project.project set from storage arcane_core.api:io in.core.register_project
data remove storage arcane_core.api:io in.core.register_project

execute unless function arcane_core.internal:data/project/register/if_validate_input/main run return fail
return run function arcane_core.internal:data/project/register/if_validate_version
