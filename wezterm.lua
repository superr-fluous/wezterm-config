local font = require("config.font")
local window = require("config.window")
local tab_bar = require("config.tab-bar")
local launch_menu = require("config.launch-menu")
local color_scheme = require("color-scheme.color-scheme")

local function merge_in_place(dst_table, src_table)
  for k, v in pairs(src_table) do
    dst_table[k] = v
  end
end

local config = {}

merge_in_place(config, font)
merge_in_place(config, window)
merge_in_place(config, tab_bar)
merge_in_place(config, launch_menu)
merge_in_place(config, color_scheme)

return config
