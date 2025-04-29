return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto", -- Sync with Neovim theme (e.g., tokyonight)
        section_separators = { left = "", right = "" }, -- Sharp, minimalist separators
        component_separators = { left = "│", right = "│" }, -- Thin pipes
        icons_enabled = true, -- Enable icons (requires Nerd Font)
        globalstatus = true, -- Single statusline for all windows
      },
      sections = {
        lualine_a = {
          { "mode", icon = "♟️" }, -- Vim mode with chess pawn (strategy)
        },
        lualine_b = {
          { "branch", icon = "📊" }, -- Git branch with chart (planning)
          {
            "diff", -- Git diff status
            symbols = { added = "➕", modified = "🔄", removed = "➖" }, -- Precise, tactical icons
          },
        },
        lualine_c = {
          { "filename", path = 1, icon = "📄" }, -- File path with document icon
          {
            "diagnostics", -- LSP diagnostics
            sources = { "nvim_lsp" },
            symbols = { error = "⚠️ ", warn = "🔍 ", info = "ℹ️ ", hint = "💭 " }, -- Analytical icons
          },
        },
        lualine_x = {
          { "filetype", icon_only = true }, -- Filetype icon
          function() -- Transliteration of Arabic phrase
            return "Rabbi zidni ilma"
          end,
        },
        lualine_y = {
          function() -- Strategic "Class Points" (file progress)
            local progress = math.floor(vim.fn.line(".") / vim.fn.line("$") * 100)
            return "Points: " .. progress .. "/100"
          end,
        },
        lualine_z = {
          function() -- Ayanokoji stoic animation
            local frames = {
              "(–_–)", -- Stoic stare 1
              "(–_– )", -- Stoic stare 2
              "(–_–;)", -- Calculating glance
              "(–_–*)", -- Subtle scheming
            }
            local time = os.time()
            local frame_index = (time % #frames) + 1
            return frames[frame_index]
          end,
        }, -- Replace time with Ayanokoji animation
      },
    },
  },
}
