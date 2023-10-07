local Plug = vim.fn['plug#']
local PATH = '~/.config/nvim/plugged/'

vim.call('plug#begin', PATH)

Plug 'jdhao/better-escape.vim'
Plug 'mbbill/undotree'
-- Plug 'vim-latex/vim-latex'
-- Plug 'reedes/vim-pencil'

vim.call('plug#end')
