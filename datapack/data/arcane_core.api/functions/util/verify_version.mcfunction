#> arcane_core.api:util/verify_version
#
# Verify the compatibility with installed version of Arcane Core
# and display a installation message.
#
# This function is a macro that accepts your `project_name`
# and the framework's `major`, `minor` and `patch` version,
# then returns whether the framework version is compatible.
#
# Examples:
# If you built your project with Arcane Code `0.1.3` you should do:
# ```
# function arcane_core.api:util/verify_version \
# 	{project_name: "My project", major: "0", minor: "1", "patch": 3}
# ```
#
# You can also store the result to execute code based on if the versions matches or not:
# ```
# execute store success score #my_project arcane_core.state run \
# 	function arcane_core.api:util/verify_version \
# 	{project_name: "My project", major: "0", minor: "1", patch: 0}
#
# # Use the result stored in scoreboard for conditional logic...
# ```
#
# @api
#
# @input
# 	macro
# 		project_name: `string`
#			name of your project
# 		major: `string`
# 			Arcane Core major version (first number)
# 		minor: `string`
# 			Arcane Core minor version (middle number)
# 		patch: `string`
# 			Arcane Core patch version (last number)
#
# @returns if the framework version is compatible

$data modify storage arcane_core.internal:temp root.installation.project_name set value "$(project_name)"

$scoreboard players set #arcane_core.internal:temp.installation.major arcane_core.state $(major)
$scoreboard players set #arcane_core.internal:temp.installation.minor arcane_core.state $(minor)
$scoreboard players set #arcane_core.internal:temp.installation.patch arcane_core.state $(patch)

return run function arcane_core.internal:util/installation/verify/main
