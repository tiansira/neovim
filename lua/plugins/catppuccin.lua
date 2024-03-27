--[[
Author       : Dingsheng Tian
Date         : 2024-03-26 22:50:33
LastEditTime : 2024-03-26 22:50:34
Description  : 
--]]
return{
  {
  "catppuccin/nvim", 
  -- enabled = false,
  name = "catppuccin", 
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      -- flavour = "mocha"
      -- flavour = "frappe",
      flavour = "macchiato",
      -- backgroup = {
      --   light = "latte",
      -- },
      -- transparent_background = false,
      vim.cmd.colorscheme "catppuccin"
    })
    
  end

  }
}

