call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'https://github.com/ThePrimeagen/harpoon.git'
call plug#end()
