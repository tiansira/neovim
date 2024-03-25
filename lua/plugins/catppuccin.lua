return{
  {
  "catppuccin/nvim", 
  -- enabled = false,
  name = "catppuccin", 
  priority = 1000,
  config = function()
    require("catppuccin").setup{
      flavour = "mocha"
      -- flavour = "macchiato"
    }
    vim.cmd.colorscheme "catppuccin"
  end
  }
}

