#> arcane_core.internal:data/load_report/compose/add_footer
#
# @internal

data modify storage arcane_core.internal:core /.load_report append value [ \
	{ \
		translate: "arcane_core.internal:util.slot", fallback: "", \
		with: [{text: "", font: "arcane_core.api:icon/composite", extra: [ \
			{translate: "arcane_core.api:icon.premade.section.info.start"}, \
			{text: "Menu: "}, \
			{ \
				translate: "arcane_core.api:icon.premade.button.open", \
				clickEvent: { \
					action: "run_command", \
					value: "/trigger arcane_core.menu", \
				}, \
				hoverEvent: { \
					action: "show_text", \
					contents: [ \
						{text: "Click the button or use command:"}, \
						{translate: "arcane_core.api:util.new_line"}, \
						{text: "/trigger arcane_core.menu", color: "#edb97e"}, \
					], \
				}, \
			}, \
		]}], \
	}, \
	{ \
		translate: "arcane_core.internal:util.empty", fallback: "%s", \
		with: [{text: "", extra: [ \
			{text: "[i] ", color: "#5991ec"}, \
			{text: "Menu: "}, \
			{ \
				text: "[BLOCKED]", \
				color: "#c44949", \
				hoverEvent: { \
					action: "show_text", \
					contents: "This menu will not work without the Arcane Core Resource pack.", \
				}, \
			}, \
		]}], \
	}, \
]

data modify storage arcane_core.internal:core /.load_report append value [ \
	{ \
		translate: "arcane_core.internal:util.empty", fallback: "%s", \
		with: [{text: "", extra: [ \
			{text: "[!] You do not have the required ", color: "#c44949"}, \
			{text: "Arcane Core", color: "#edb97e" }, \
			{text: " resource pack. Click ", color: "#c44949"}, \
			{ \
				text: "[HERE]", color: "#5991ec", \
				clickEvent: { \
					action: "open_url", \
					value: "https://modrinth.com/datapack/arcane-core", \
				}, \
				hoverEvent: { \
					action: "show_text", \
					contents: "Click to show project on Modrinth.", \
				}, \
			}, \
			{text: " to download.", color: "#c44949"}, \
		]}], \
	}, \
	{ \
		translate: "arcane_core.internal:util.slot", fallback: "", \
		font: "arcane_core.api:icon/composite", \
	}, \
]

function arcane_core.internal:data/load_report/compose/compose_resourcepack_mismatch_notice
# data modify storage arcane_core.internal:temp /.text_line[0].with[0].extra[0].translate set value "arcane_core.api:icon.premade.section.info.end.new_line"
data modify storage arcane_core.internal:core /.load_report[-1][1].with set from storage arcane_core.internal:temp /.text_line
