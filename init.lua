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
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")


require("nvim-treesitter.install").prefer_git = true

-- require'lspconfig'.pyright.setup{}


