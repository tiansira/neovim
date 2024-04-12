-- vim.api.nvim_create_augroup("neotree", {})
-- vim.api.nvim_create_autocmd("VimEnter", {
--   desc = "Open Neotree automatically",
--   group = "neotree",
--   callback = function()
--     if vim.fn.argc() == 0 then
--       vim.cmd "Neotree toggle"
--     end
--   end,
-- })



-- autoclose nvim-tree if it's the last buffer open
  -- vim.cmd [[
  -- augroup autoclose_nvim_tree
  -- autocmd!
  -- autocmd BufEnter * ++nested
  -- \ if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() |
  -- \   quit |
  -- \ endif
  -- augroup end
  -- ]]
  
  vim.api.nvim_create_autocmd('TextYankPost',{
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
      vim.highlight.on_yank()
    end,
  }

  )
