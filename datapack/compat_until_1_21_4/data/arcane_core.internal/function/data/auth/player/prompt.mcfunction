#> arcane_core.internal:data/auth/player/prompt
#
# @internal

execute if score @s arcane_core.internal.auth.token matches 1..2147483647 run \
	return run tellraw @s [ \
		{"font": "arcane_core.api:icon/composite", "translate": "arcane_core.api:icon.premade.section.info.start.new_line"}, \
		{"text": "This action requires ", "color": "#5991ec"}, \
		{"text": "administrator", "color": "#c44949"}, \
		{"text": " permission.", "color": "#5991ec"}, \
		{"translate": "arcane_core.api:icon.premade.section.info.continue.new_line"}, \
		{"text": "Your authentication is "}, \
		{"text": "expired", "color": "#c44949"}, \
		{"text": "."}, \
		{"translate": "arcane_core.api:icon.premade.section.info.continue.x2.new_line"}, \
		{"text": "Click "}, \
		{ \
			"translate": "arcane_core.api:icon.zw.tile.bg.blue.wide.x2", \
			"extra": [{"text": " Here "}], \
			"clickEvent": { \
				"action": "run_command", \
				"value": "/function arcane_core.internal:data/auth/player/authenticate" \
			} \
		}, \
		{"text": " to re-authenticate with "}, \
		{"text": "Arcane Core", "color": "#edb97e"}, \
		{"text": "."}, \
		{"translate": "arcane_core.api:icon.premade.section.info.end.new_line"} \
	]

tellraw @s [ \
	{"font": "arcane_core.api:icon/composite", "translate": "arcane_core.api:icon.premade.section.info.start.new_line"}, \
	{"text": "This action requires ", "color": "#5991ec"}, \
	{"text": "administrator", "color": "#c44949"}, \
	{"text": " permission.", "color": "#5991ec"}, \
	{"translate": "arcane_core.api:icon.premade.section.info.continue.x2.new_line"}, \
	{"text": "Click "}, \
	{ \
		"translate": "arcane_core.api:icon.zw.tile.bg.blue.wide.x2", \
		"extra": [{"text": " Here "}], \
		"clickEvent": { \
			"action": "run_command", \
			"value": "/function arcane_core.internal:data/auth/player/authenticate" \
		} \
	}, \
	{"text": " to authenticate with "}, \
	{"text": "Arcane Core", "color": "#edb97e"}, \
	{"text": "."}, \
	{"translate": "arcane_core.api:icon.premade.section.info.end.new_line"} \
]
