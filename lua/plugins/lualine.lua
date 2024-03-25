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

