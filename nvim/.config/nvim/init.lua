-- PLUGINS
-- Using paq.nvim
vim.cmd 'packadd paq-nvim'
local paq = require('paq-nvim').paq
paq {'savq/paq-nvim', opt=true}


-- enable 24bit color
vim.o.termguicolors = true

-- THEME
-- gruvbox colors
paq 'gruvbox-community/gruvbox'
vim.g.gruvbox_italic = 1
vim.g.gruvbox_improved_strings = 1
vim.g.gruvbox_improved_warnings = 1
vim.g.gruvbox_contrast_light = 'hard'
vim.g.gruvbox_contrast_dark = 'medium'
vim.cmd [[colorscheme gruvbox]]
-- statusline
paq 'itchyny/lightline.vim'
vim.g.lightline = {
  colorscheme = 'gruvbox'
}
vim.o.showmode = false
if os.getenv('termTheme') == 'light' then
  vim.o.background = 'light'
end

paq {'nvim-treesitter/nvim-treesitter', hook = ':TSUpdate'}
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}

