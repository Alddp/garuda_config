-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
      "cpp",
      "rust",
      "c",
      "python",
      "json",
      "html",
      "javascript",
      "bash",
      "latex",
      "norg",
      "scss",
      "svelte",
      "tsx",
      "typst",
      "vue",
    },
  },
}
