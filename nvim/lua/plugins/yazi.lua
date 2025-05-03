---@type LazySpec
return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    -- check the installation instructions at
    -- https://github.com/folke/snacks.nvim
    "folke/snacks.nvim",
  },
  keys = {
    { "<leader>y", "", desc = "󰇥 Yazi" }, -- group title
    {
      "<leader>yy",
      "<cmd>Yazi<CR>",
      desc = "Toggle Yazi at current file",
    },
    {
      "<leader>yc",
      "<cmd>Yazi cwd<CR>",
      desc = "Open Yazi in CWD",
    },
    {
      "<leader>o",
      "<cmd>Yazi toggle<CR>",
      mode = { "n", "v" },
      desc = "Resume last Yazi session",
    },
  },
  ---@type YaziConfig | {}
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
  -- 👇 if you use `open_for_directories=true`, this is recommended
  init = function()
    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
