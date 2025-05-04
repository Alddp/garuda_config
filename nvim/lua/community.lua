-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.rust" },

  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.recipes.neovide" },
  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },

  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.editing-support.undotree" },

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.recipes.neo-tree-dark" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  -- { import = "astrocommunity.recipes.heirline-clock-statusline" },
}
