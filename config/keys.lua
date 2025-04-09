local wezterm = require("wezterm")

return {
  key_map_preference = "Physical",
  -- could be useful, 'll leave it here for conveniance
  -- debug_key_events = true,
  keys = {
    {
      key = "w",
      mods = "CTRL|SHIFT",
      action = wezterm.action.CloseCurrentPane({ confirm = false }),
    },
    {
      key = "F4",
      mods = "ALT",
      action = wezterm.action.CloseCurrentTab({ confirm = true }),
    },
    {
      key = "c",
      mods = "CTRL",
      action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
    },
    {
      key = "c",
      mods = "CTRL|SHIFT",
      action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
    },
    { key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
    {
      key = "v",
      mods = "CTRL|SHIFT",
      action = wezterm.action.PasteFrom("Clipboard"),
    },
    {
      key = "-",
      mods = "CTRL",
      action = wezterm.action.DecreaseFontSize,
    },
    {
      key = "+",
      mods = "CTRL",
      action = wezterm.action.IncreaseFontSize,
    },
    {
      key = "d",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SpawnTab("CurrentPaneDomain"),
    },
    {
      key = "t",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ShowLauncher,
    },
    {
      key = "UpArrow",
      mods = "ALT",
      action = wezterm.action.ActivatePaneDirection("Up"),
    },
    {
      key = "DownArrow",
      mods = "ALT",
      action = wezterm.action.ActivatePaneDirection("Down"),
    },
    {
      key = "LeftArrow",
      mods = "ALT",
      action = wezterm.action.ActivatePaneDirection("Left"),
    },
    {
      key = "RightArrow",
      mods = "ALT",
      action = wezterm.action.ActivatePaneDirection("Right"),
    },
    {
      key = "1",
      mods = "ALT",
      action = wezterm.action.ActivateTab(0),
    },
    {
      key = "2",
      mods = "ALT",
      action = wezterm.action.ActivateTab(1),
    },
    {
      key = "3",
      mods = "ALT",
      action = wezterm.action.ActivateTab(2),
    },
    {
      key = "4",
      mods = "ALT",
      action = wezterm.action.ActivateTab(3),
    },
    {
      key = "5",
      mods = "ALT",
      action = wezterm.action.ActivateTab(4),
    },
    {
      key = "6",
      mods = "ALT",
      action = wezterm.action.ActivateTab(5),
    },
    {
      key = "7",
      mods = "ALT",
      action = wezterm.action.ActivateTab(6),
    },
    {
      key = "8",
      mods = "ALT",
      action = wezterm.action.ActivateTab(7),
    },
    {
      key = "9",
      mods = "ALT",
      action = wezterm.action.ActivateTab(8),
    },
    {
      key = "n",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SpawnWindow,
    },
    {
      key = "Tab",
      mods = "CTRL",
      action = wezterm.action.ActivateTabRelative(1),
    },
    {
      key = "PageUp",
      mods = "",
      -- TODO: ScrollToPrompt does not work...
      action = wezterm.action.ScrollByPage(-0.25),
    },
    {
      key = "PageDown",
      mods = "",
      action = wezterm.action.ScrollByPage(0.25),
    },
    {
      key = "PageUp",
      mods = "CTRL",
      action = wezterm.action.ScrollToTop,
    },
    {
      key = "PageDown",
      mods = "CTRL",
      action = wezterm.action.ScrollToBottom,
    },
    {
      key = "+",
      mods = "ALT|SHIFT",
      action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "-",
      mods = "ALT|SHIFT",
      action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "f",
      mods = "ALT",
      action = wezterm.action.Search("CurrentSelectionOrEmptyString"),
    },
    {
      key = "F11",
      mods = "",
      action = wezterm.action.ToggleFullScreen,
    },
  },
}
