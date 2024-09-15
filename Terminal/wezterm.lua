local wezterm = require 'wezterm'
local launch_menu = {}
local config = wezterm.config_builder()

config.default_prog = { 'powershell', '-NoLogo'  }
config.default_cwd = "G:\\Documents\\"
enable_scroll_bar=true

config.font = wezterm.font('Cascadia Code', { weight = 'Bold', italic = false })
config.window_background_opacity = 1
use_fancy_tab_bar = true
wezterm.on(
'format-tab-title',
function(tab, tabs, panes, config, hover, max_width)
    local edge_background = '#000000'
    local background = '#dddddd'
    local foreground = '#222222'

    if tab.is_active then
        background = '#ffffff'
        foreground = '#000000'
    elseif hover then
        background = '#dddddd'
        foreground = '#222222'
    end

    local edge_foreground = background
    local title = wezterm.truncate_right(tab.active_pane.title, max_width)

    return {
        { Background = { Color = edge_background } },
        { Foreground = { Color = edge_foreground } },
        { Background = { Color = background } },
        { Foreground = { Color = foreground } },
        { Text = title },
        { Background = { Color = edge_background } },
        { Foreground = { Color = edge_foreground } },

    }
end)

config.window_frame = {
  font = wezterm.font { family = 'Cascadia Code'},
  font_size = 7.0,
  active_titlebar_bg = '#eeeeee',
  inactive_titlebar_bg = '#ffffff',
}

config.font_size = 10.0

config.enable_scroll_bar = true
config.colors = {
  scrollbar_thumb = '#eeeeee',
}


config.colors = {
  foreground = 'black',
  background = 'white',
  cursor_bg = 'black',
  cursor_fg = 'black',
  cursor_border = 'black',
  selection_fg = 'black',
  selection_bg = '#F9E993',
  scrollbar_thumb = '#dddddd',
}
config.background = {
  {
    source = {
      File = 'G:\\Documents\\BG.png',
    },
    hsb = { brightness = 1.1 },
    attachment = { Parallax = 5 },
    repeat_y = "Mirror",
    opacity = 1,
  }
}
config.tab_bar_at_bottom = true
config.window_decorations = "RESIZE"

config.color_scheme = 'Nebula (base16)'

return config