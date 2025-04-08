local wezterm = require("wezterm")

return {
  font = wezterm.font("Fira Code"),
  font_size = 13.0,
  front_end = "OpenGL",
  freetype_load_target = "Light",
  freetype_render_target = "HorizontalLcd",
  cell_width = 1,
}
