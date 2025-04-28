-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- 强制 Neovim 使用 fish 作为 shell
vim.opt.shell = "/usr/bin/fish"
vim.opt.shellcmdflag = "--no-config -c"
-- vim.opt.shellredir = ">%s 2>&1"
-- vim.opt.shellpipe = "2>&1 | tee"
-- vim.opt.shellquote = ""
-- vim.opt.shellxquote = ""
-- 打个提示，告诉你 shell 已切换成功
-- vim.schedule(
--   function() vim.notify("🐟 Using fish shell in Neovim terminal", vim.log.levels.INFO, { title = "AstroNvim Shell" }) end
-- )
