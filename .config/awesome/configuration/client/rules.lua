local awful = require('awful')
local beautiful = require('beautiful')
local gears = require('gears')
local client_keys = require('configuration.client.keys')
local client_buttons = require('configuration.client.buttons')

-- -- Rules
-- awful.rules.rules = {
--   -- All clients will match this rule.
--   {
--     rule = {},
--     properties = {
--       focus = awful.client.focus.filter,
--       raise = true,
--       keys = client_keys,
--       buttons = client_buttons,
--       screen = awful.screen.preferred,
--       placement = awful.placement.no_offscreen,
--       floating = false,
--       maximized = false,
--       above = false,
--       below = false,
--       ontop = false,
--       sticky = false,
--       maximized_horizontal = false,
--       maximized_vertical = false
--     }
--   },
--   {
--     rule_any = {name = {'QuakeTerminal'}},
--     properties = {skip_decoration = true}
--   },
--   -- Titlebars
--   {
--     rule_any = {type = {'dialog'}, class = {'Wicd-client.py', 'calendar.google.com'}},
--     properties = {
--       placement = awful.placement.centered,
--       ontop = true,
--       floating = true,
--       drawBackdrop = true,
--       shape = function()
--         return function(cr, w, h)
--           gears.shape.rounded_rect(cr, w, h, 8)
--         end
--       end,
--       skip_decoration = true
--     }
--   }
-- }

-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
  -- All clients will match this rule.
  { rule = { },
    properties = { 
      border_width = beautiful.border_width,
      border_color = beautiful.border_normal,
      focus = awful.client.focus.filter,
      raise = true,
      keys = clientkeys,
      buttons = clientbuttons,
      screen = awful.screen.preferred,
      placement = awful.placement.no_overlap+awful.placement.no_offscreen
   }
  },

  -- Floating clients.
  { rule_any = {
      instance = {
        "DTA",  -- Firefox addon DownThemAll.
        "copyq",  -- Includes session name in class.
        "pinentry",
      },
      class = {
        "Arandr",
        "Blueman-manager",
        "Gpick",
        "Kruler",
        "MessageWin",  -- kalarm.
        "Sxiv",
        "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
        "Wpa_gui",
        "veromix",
        "xtightvncviewer"},

      -- Note that the name property shown in xprop might be set slightly after creation of the client
      -- and the name shown there might not match defined rules here.
      name = {
        "Event Tester",  -- xev.
      },
      role = {
        "AlarmWindow",  -- Thunderbird's calendar.
        "ConfigManager",  -- Thunderbird's about:config.
        "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
      }
    }, properties = { floating = true }},

  -- Add titlebars to normal clients and dialogs
  { rule_any = {type = { "normal", "dialog" }
    }, properties = { titlebars_enabled = false }
  },

  -- Set Firefox to always map on the tag named "2" on screen 1.
  { rule = { class = "[Ss]potify" },
    properties = { tag = "9" } },
}
-- }}}