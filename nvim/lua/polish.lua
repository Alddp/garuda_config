-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- 强制 Neovim 使用 fish 作为 shell
vim.opt.shell = "/usr/bin/fish"
vim.opt.shellcmdflag = "--no-config -c"

vim.opt.modeline = false

-- moved to astroui.lua
-- vim.keymap.set("n", "<leader>Ub", function() vim.cmd("cd " .. vim.fn.expand "%:p:h") end, { desc = "Cd To Buffer Dir" })
