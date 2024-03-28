--[[
Author       : Dingsheng Tian
Date         : 2024-03-26 17:43:11
LastEditTime : 2024-03-26 17:43:11
Description  : 
--]]
return {
      {
          'nvim-lualine/lualine.nvim',
          config = function()
              require('lualine').setup{
                  options = { 
                    theme = 'molokai',
--                     theme = 'dracula'
--                    icons_enabled = false,
              }
              }
          end
      }
}

