return{
{
    "nvim-neo-tree/neo-tree.nvim",
    -- enabled = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
   config = function()
      require("neo-tree").setup({
        enable_git_status = false,

        filesystem = {
          filtered_items = {
	          visible = true,
	          show_hidden_count = true,
	          hide_dotfiles = false,
	          hide_gitignored = true,
	          hide_by_name = {
	            -- '.git',
	            -- '.DS_Store',
	            -- 'thumbs.db',
	          },
	          never_show = {},
          },
        }
      })
    end
}


}
