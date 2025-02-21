-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local g = vim.g -- global variables

vim.keymap.set('n', '<C-l>', '<cmd>nohlsearch<CR>')
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

map('n', '<C-l>', ':nohl<CR>', { noremap = true })

map('n', '<leader>cc', ':CommentToggle<CR>', { noremap = true })
map('v', '<leader>cc', ':CommentToggle<CR>', { noremap = true })

map('n', '<leader>gl', ':Git log -p -- % <CR>', default_opts)

-- fast saving with <leader> and s
--map('n', '<leader>s', ':w<CR>', default_opts)
--map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

map('n', '<C-l>', ':nohl<CR>', { noremap = true })

map('n', '<leader>ww', ':SessionsSave<CR>', default_opts)
map('v', '<leader>ww', ':SessionsSave<CR>', default_opts)
map('v', '<leader>wl', ':SessionsLoad<CR>', default_opts)
map('n', '<leader>wl', ':SessionsLoad<CR>', default_opts)

-- g.github_enterprise_urls = 'https://github.paypal.com'
vim.cmd "let g:github_enterprise_urls = ['https://github.paypal.com']"

return {
  { 'github/copilot.vim' },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-dadbod' },
  { 'tpope/vim-rhubarb' },
  { 'tpope/vim-surround' },
  { 'mattn/emmet-vim' },
  'natecraddock/sessions.nvim',
  'terrortylor/nvim-comment',
  'mattn/emmet-vim',
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  { 'chrisbra/unicode.vim' },
  --'mfussenegger/nvim-dap',
  --require 'github/copilot.vim',
}
