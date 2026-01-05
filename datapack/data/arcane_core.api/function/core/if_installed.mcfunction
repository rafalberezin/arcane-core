	#> arcane_core.api:core/if_installed
	#
	# Always returns success.
	#
	# Use this function to check if Arcane Core is installed
	# by the user and take appropriate action if not.
	#
	# This function does not work with the
	# `execute unless function ...` command chain,
	# so the best usage is to create early return if the call succeeds.
	#
	# Make sure you're calling this from a function
	# that's not dependent on Arcane Core to be run.
	#
	# Example:
	#
	# (inside a function registered to `minecraft:load`)
	# ```
	# execute if function arcane_core.api:core/if_installed run return 0
	#
	# # Do something here when the framework is missing...
	# ```
	#
	# Take note that sending messages to players from `minecraft:load`
	# will not work when joining a singleplayer world,
	# or starting a server.
	#
	# For that the simplest solution would be to delay sending the message by placing that command
	# it in another function, and scheduling it's execution with a generous delay.
	#
	# @api

	return 1
