# wezterm-config

[wezterm](https://github.com/wezterm/wezterm) config for Windows

>[!TIP]
> Default shells are: cmd and PowerShell. Define additional shells in `config/user-shells.lua`

> [!NOTE]
> `config/user-shells.lua` must return an indexed table of shell configs. Shell config includes `args` (command and parameters to invoke a shell) and `label` (default title for tab). Consult [`SpawnCommand`](https://wezterm.org/config/lua/SpawnCommand.html) for additional info.

## TODO

- Windows Terminal key bindings (splits mostly)
- Key bindings for NeoVim config (Ctrl+Shift, Ctrl+Enter and such)
