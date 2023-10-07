local set = vim.o
local letg = vim.g
local cmd = vim.cmd

cmd([[ 
syntax enable
filetype off
]])

cmd.filetype = 'plugin indent on'

letg.mapleader = ' '
letg.maplocalleader = ' '
letg.completor_python_binary = '/bin/python'

-- General
set.nocompatible = true
set.encoding = 'utf-8'
set.mouse = 'a'
set.clipboard = 'unnamedplus' -- "Fixes" Vim/3rd party clipboard
set.wildmenu = true -- autocomplete
set.smoothscroll = true
set.lazyredraw = true

-- Search
set.showmatch = true 
set.hlsearch = true
set.incsearch = true -- highlight as you're typing
set.ignorecase = true
set.smartcase = true

-- Editor
set.ruler = true
set.number = true
set.relativenumber = true
set.expandtab = true -- tabs -> spaces
set.shiftwidth = 2
set.softtabstop = 2
set.tabstop = 2 --!
set.cindent = true --!
set.wrap = true --!
-- set.cursorline = true

-- Window-related
set.splitright = true
set.splitbelow = true
-- set.termguicolors = true -- truecolor
-- set.signcolumn = 'yes:4'

-- Plugins
set.undodir = ".config/nvim/undodir/" -- Persistent Undo
set.undofile = true
letg.better_escape_shortcut = 'jk'
letg.better_escape_interval = 250 

