#> arcane_core.internal:data/auth/player/authenticate
#
# @internal

scoreboard players operation @s arcane_core.internal.auth.token = #arcane_core.internal:core.auth.token arcane_core.api.state

tellraw @s [\
	{"font": "arcane_core.api:icon/composite", "translate": "arcane_core.api:icon.premade.section.success.start.new_line"}, \
	{"text": "Authenticated successfully!\n", "color": "#69ca73"} \
]
