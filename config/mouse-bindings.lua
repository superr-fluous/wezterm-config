local wezterm = require("wezterm")

return {
	mouse_bindings = {
		-- with Right-click, copy if there is selection, else paste
		-- https://github.com/wezterm/wezterm/discussions/3541#discussioncomment-5633570 FTW
		{
			event = { Down = { streak = 1, button = "Right" } },
			mods = "NONE",
			action = wezterm.action_callback(function(window, pane)
				local has_selection = window:get_selection_text_for_pane(pane) ~= ""
				if has_selection then
					window:perform_action(wezterm.action.CopyTo("ClipboardAndPrimarySelection"), pane)
					window:perform_action(wezterm.action.ClearSelection, pane)
				else
					window:perform_action(wezterm.action({ PasteFrom = "Clipboard" }), pane)
				end
			end),
		},
	},
}
