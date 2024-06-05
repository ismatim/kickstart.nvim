-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local g = vim.g -- global variables

map('n', '<leader>t', ':tabnew<CR>', default_opts)
map('n', '<leader>rt', ':+tabmove<CR>', default_opts)
map('n', '<leader>rT', ':-tabmove<CR>', default_opts)
map('n', '<C-a>', 'ggVG', default_opts)

g.copilot_no_tab_map = true -- change leader to a comma
map('n', '<leader>cp', ':Copilot panel<CR>', default_opts) -- Copilot panel for suggestions
map('i', '<C-j>', 'copilot#Accept("\\<CR>")', { expr = true, noremap = true, silent = true })

map('n', '<C-n>', ':Neotree<CR>', default_opts) -- open/close
map('n', '<leader>r', ':Neotree reveal<CR>', default_opts) -- refresh
map('n', '<C-a>', 'ggVG', default_opts)

return {
  { 'github/copilot.vim' },

  --require 'github/copilot.vim',
}
