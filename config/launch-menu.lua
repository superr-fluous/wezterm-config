local wezterm = require("wezterm")
local ok_user_shells, user_shells = pcall(require, "config.user-shells")

local launch_menu = {}
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	table.insert(launch_menu, {
		label = "PowerShell",
		args = { "powershell.exe", "-NoLogo" },
	})
	table.insert(launch_menu, {
		label = "Command Prompt",
		args = { "cmd.exe" },
	})

	if ok_user_shells then
		for _, shell_config in ipairs(user_shells) do
			table.insert(launch_menu, shell_config)
		end
	end
end

return { launch_menu = launch_menu, default_prog = launch_menu[1].args }
