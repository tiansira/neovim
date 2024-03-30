--[[
Author       : Dingsheng Tian
Date         : 2024-03-26 17:20:27
LastEditTime : 2024-03-26 17:20:28
Description  : 
--]]
--require("plugins.plugins-setup")
require("core.options")
require("core.keymaps")
require("core.autocmd")
-- require("core.enabled-plugins")


-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("nvim-treesitter.install").prefer_git = true

-- require'lspconfig'.pyright.setup{}


