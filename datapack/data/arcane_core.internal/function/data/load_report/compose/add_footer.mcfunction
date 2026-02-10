#> arcane_core.internal:data/load_report/compose/add_footer
#
# @internal

data modify storage arcane_core.internal:core /.load_report append value [ \
	{ \
		translate: "arcane_core.internal:util.slot", fallback: "", \
		with: [{text: "", font: "arcane_core.api:icon/composite", extra: [ \
			{translate: "arcane_core.api:icon.premade.section.info.start.new_line"}, \
			{text: "Menu: "}, \
			{ \
				translate: "arcane_core.api:icon.premade.button.open", \
				click_event: { \
					action: "run_command", \
					command: "/trigger arcane_core.menu", \
				}, \
				hover_event: { \
					action: "show_text", \
					value: [ \
						{text: "Click the button or use command:\n"}, \
						{text: "/trigger arcane_core.menu", color: "#edb97e"}, \
					], \
				}, \
			}, \
			{text: "\n"}, \
		]}], \
	}, \
	{ \
		translate: "arcane_core.internal:util.empty", fallback: "%s", \
		with: [{text: "", extra: [ \
			{text: "\n[i] ", color: "#5991ec"}, \
			{text: "Menu: "}, \
			{ \
				text: "[BLOCKED]", \
				color: "#c44949", \
				hover_event: { \
					action: "show_text", \
					value: "This menu will not work without the Arcane Core Resource pack.", \
				}, \
			}, \
			{text: "\n[!] You do not have the required ", color: "#c44949"}, \
			{text: "Arcane Core", color: "#edb97e" }, \
			{text: " resource pack.\n |  Click ", color: "#c44949"}, \
			{ \
				text: "[HERE]", color: "#5991ec", \
				click_event: { \
					action: "open_url", \
					url: "https://modrinth.com/datapack/arcane-core", \
				}, \
				hover_event: { \
					action: "show_text", \
					value: {text: "Click to show project on Modrinth."}, \
				}, \
			}, \
			{text: " to download.", color: "#c44949"}, \
		]}], \
	}, \
]

function arcane_core.internal:data/load_report/compose/compose_resourcepack_mismatch_notice
data modify storage arcane_core.internal:core /.load_report[-1][0].with[0].extra append from storage arcane_core.internal:temp /.text_line[0]
