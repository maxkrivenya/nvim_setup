-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

  
  use ({
        'marko-cerovac/material.nvim',
        as = 'material',
        config = function()
            vim.cmd('colorscheme material')--Lua:
            vim.g.material_style = "palenight"
        end
   })


   use('neovim/nvim-lspconfig')
   use('williamboman/mason.nvim')
   use('williamboman/mason-lspconfig.nvim')
   use('hrsh7th/nvim-cmp')
   use('hrsh7th/cmp-nvim-lsp')
   use('hrsh7th/cmp-buffer')
   use('hrsh7th/cmp-path')
   use('saadparwaiz1/cmp_luasnip')
   use('hrsh7th/cmp-nvim-lua')
   use('L3MON4D3/LuaSnip')
   use('rafamadriz/friendly-snippets')


   use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
   use('nvim-treesitter/playground')

   use('ThePrimeagen/harpoon')
   use('mbbill/undotree')
   use('tpope/vim-fugitive')

   use {
       'VonHeikemen/lsp-zero.nvim',
       branch = 'v3.x',
       requires = {
           --- Uncomment the two plugins below if you want to manage the language servers from neovim
           -- {'williamboman/mason.nvim'},
           -- {'williamboman/mason-lspconfig.nvim'},

           -- LSP Support
           {'neovim/nvim-lspconfig'},
           -- Autocompletion
           {'hrsh7th/nvim-cmp'},
           {'hrsh7th/cmp-nvim-lsp'},
           {'L3MON4D3/LuaSnip'},
       }
   }
end)-- If you are using Packer
