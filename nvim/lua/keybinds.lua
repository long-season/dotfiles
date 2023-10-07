-- Where m --> n (normal), x (visual),
-- v (visual + select), i (insert), c (command line)
local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Shortcuts & Convenience
map('', '<F8>', ':nohl<CR>')
map('i', '<F8>', '<Esc>:nohl<CR>a')
map('n', 'S', ':%s//g<Left><Left>')

map('', '<F7>', ':w <CR> :!clear && gcc % <CR>')
map('', '<F9>', ':w <CR> :!clear && gcc % -o %< && ./%<<CR>')
map('n', '<F5>', ':make<CR> :!./%<<CR>')

-- Navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', 'j', 'gj') -- Navigate per row instead of per line (for wrapped lines)
map('n', 'k', 'gk')

-- Easier tab management
map('n', '<Leader>1', '1gt<CR>')
map('n', '<Leader>2', '2gt<CR>')
map('n', '<Leader>3', '3gt<CR>')
map('n', '<Leader>4', '4gt<CR>')
map('n', '<Leader>t', ':tabnew<CR>')
map('n', '<Leader>c', ':tabclose<CR>')

-- Function & Plugin-related
map('n', '<F6>', ':UndotreeToggle<CR> :UndotreeFocus<CR>')
map('i', '<expr>', '<tab> InsertTabWrapper()')
map('i', '<s-tab>', '<c-n>')
