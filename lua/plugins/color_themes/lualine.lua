--[[
Author       : Dingsheng Tian
Date         : 2024-03-26 17:43:11
LastEditTime : 2024-03-26 17:43:11
Description  : 
--]]
return {
      {
          'nvim-lualine/lualine.nvim',
          dependencies = { 'nvim-tree/nvim-web-devicons' },
          config = function()
              require('lualine').setup{
                  options = { 
                    theme = 'molokai',
                    -- theme = 'ayu_light',
--                     theme = 'dracula'
--                    icons_enabled = false,
--

                  },

                  sections = {
                      lualine_a = {'mode'},
                      lualine_b = {'branch', 'diff', 'diagnostics'},
                      lualine_c = {'filename'},
                      -- lualine_x = { {'datetime', style = '%%H:%M' } },
                      lualine_x = {},
                      lualine_y = {'progress'},
                      lualine_z = {'location'}
                  },
              }
          end
      }
}

