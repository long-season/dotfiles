vim.cmd('source ~/.config/nvim/functions.vim')
-- Note: Loading 'plugins' first seems to mess up some of the configuration.
-- Colorschemes installed via Plug seem to have a problem being recognized
-- if the plugin isn't loaded before the 'colorscheme X' command, so
-- it's best to place them manually in $HOME/local/share/nvim/pack/themes and load plugins last to avoid both these problems.
require('settings')
require('keybinds')
require('plugins')
