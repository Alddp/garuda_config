-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`

-- theme colors
local colors = {
  dark = "#111317",
  light = "#777777",
  neutral = "#8094B4",
  backdrop = "#61afef",
}

local new_highlights = {
  -- indentline marker
  NeoTreeIndentMarker = { fg = colors.neutral },

  -- file tree window separator
  NeoTreeWinSeparator = { fg = colors.dark, bg = colors.dark },

  -- info messages
  NeoTreeMessage = { link = "NeoTreeDotfile" },

  -- normal mode appearance
  NeoTreeNormal = { bg = colors.dark },
  NeoTreeNormalNC = { link = "NeoTreeNormal" },

  -- dotfiles
  NeoTreeDotfile = { fg = colors.light },
  NeoTreeDotfiles = { link = "NeoTreeDotfile" },

  -- tabs
  NeoTreeTabActive = { fg = colors.dark, bg = colors.backdrop, bold = true },
  NeoTreeTabInactive = { fg = colors.light, bg = colors.dark },

  -- tab separators
  NeoTreeTabSeparatorActive = { fg = colors.backdrop, bg = colors.backdrop },
  NeoTreeTabSeparatorInactive = { link = "NeoTreeWinSeparator" },

  -- file operations prompt
  NeoTreeTitleBar = { link = "NeoTreeTabActive" },
  NeoTreeFloatNormal = { bg = colors.dark },
  NeoTreeFloatBorder = { fg = colors.backdrop, bg = colors.dark },
}

---@type LazySpec
return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      -- change colorscheme
      colorscheme = "onedark_vivid",
      -- colorscheme = "catppuccin-mocha",
      -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
      highlights = {
        init = { -- this table overrides highlights in all themes
          -- Normal = { bg = "#000000" },
        },
        astrodark = { -- a table of overrides/changes when applying the astrotheme theme
          -- Normal = { bg = "#000000" },
        },
      },
      -- Icons can be configured throughout the interface
      icons = {
        -- configure the loading of the lsp in the status line
        LSPLoading1 = "⠋",
        LSPLoading2 = "⠙",
        LSPLoading3 = "⠹",
        LSPLoading4 = "⠸",
        LSPLoading5 = "⠼",
        LSPLoading6 = "⠴",
        LSPLoading7 = "⠦",
        LSPLoading8 = "⠧",
        LSPLoading9 = "⠇",
        LSPLoading10 = "⠏",
      },
    },
  },
  {
    "AstroNvim/astroui",
    ---@param opts AstroUIOpts
    opts = function(_, opts)
      if not opts.highlights then opts.highlights = {} end
      local astrodark = opts.highlights.astrodark
      if type(astrodark) == "function" then
        opts.highlights.astrodark = function(...) return require("astrocore").extend_tbl(astrodark(...), new_highlights) end
      else
        opts.highlights.astrodark = require("astrocore").extend_tbl(astrodark, new_highlights)
      end

      if not opts.icons then opts.icons = {} end
      opts.icons.GitAdd = "󰬈" -- set icon for git symbols
      opts.icons.GitChange = "󰬔"
      opts.icons.GitDelete = "󰬋"
      opts.icons.GitRenamed = "󰬙"
      opts.icons.GitUntracked = "󰬛"
      opts.icons.GitIgnored = "󰬐"
      opts.icons.GitUnstaged = "󰬜"
      opts.icons.GitStaged = "󰬚"
      opts.icons.GitConflict = "󰬊"
    end,
  },
  {

    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>N", "", desc = " Neotree" },
      -- 设置Neotree root 为工作目录
      { "<leader>Nw", "<cmd>:Neotree dir=./<CR>", desc = "Cd To WorkSpace" },

      -- 打开buffer所在目录
      {
        "<leader>Nb",
        function() vim.cmd("cd " .. vim.fn.expand "%:p:h") end,
        desc = "CD to current buffer's directory",
      },
    },
  },
}
