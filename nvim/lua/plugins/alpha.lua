return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    local dashboard_button = require("alpha.themes.dashboard").button

    -- Menu options (like Find file, New file, etc.)
    dashboard.section.buttons.val = {
      dashboard_button("f", "  Find file", ":Telescope find_files <CR>"),
      dashboard_button("n", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard_button("r", "  Recent files", ":Telescope oldfiles <CR>"),
      dashboard_button("g", "  Find text", ":Telescope live_grep <CR>"),
      dashboard_button("c", "  Config", ":e $MYVIMRC <CR>"),
      dashboard_button("s", "  Restore Session", ":SessionManager load_session <CR>"),
      dashboard_button("l", "  Lazy Extras", ":Lazy show <CR>"),
      dashboard_button("q", "  Quit", ":qa<CR>"),
    }

    -- Footer (if desired, showing something like plugin load time)
    dashboard.section.footer.val = {
      "⚡ Neovim loaded " .. vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1)) .. " plugins in " .. vim.fn.strftime("%H:%M:%S")
    }

    alpha.setup(dashboard.opts)
  end,
}
