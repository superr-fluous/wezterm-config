local wezterm = require("wezterm")

return {
  enable_scroll_bar = true,
  window_decorations = "RESIZE",
  initial_cols = 144,
  initial_rows = 32,
  window_frame = {
    font = wezterm.font({ family = "Fira Code", weight = "Bold" }),
    font_size = 12.0,
    active_titlebar_bg = "#1C1B1A",
    inactive_titlebar_bg = "#343331",
  },
  window_padding = {
    top = 4,
    bottom = 4,
    right = 12, -- scroll bar width
    left = 12,
  },
  inactive_pane_hsb = {
    saturation = 1,
    brightness = 0.4,
  },
  -- config.window_background_image = '/path/to/wallpaper.jpg'
  -- config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  -- brightness = 0.3,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  -- hue = 1.0,

  -- You can adjust the saturation also.
  -- saturation = 1.0,
  --}
}
