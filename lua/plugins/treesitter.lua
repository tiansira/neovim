--[[
Author       : Dingsheng Tian
Date         : 2024-03-26 17:19:02
LastEditTime : 2024-03-26 17:19:02
Description  : 
--]]
return{
  "nvim-treesitter/nvim-treesitter",
  version = false,
  opts = {
    ensure_installed = { "bash", "lua", "vim", "vimdoc" },
    highlight = { enable = true },
  },
}
