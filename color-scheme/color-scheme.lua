local wezterm = require("wezterm")
local _, modulePath = ...
local config_path = modulePath:gsub("(color%-scheme%.lua)$", "flexoki-dark.toml")

local function load_color_scheme()
  return wezterm.color.load_scheme(config_path)
end

local ok, colors = pcall(load_color_scheme)

if ok and colors then
  return { colors = colors }
end

return { color_scheme = "flexoki-dark" }
