vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', {silent = true})

local opts = { noremap = true, silent = true }

-- Save
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)
-- Exit
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- Delete char without saving it
vim.keymap.set('n', 'x', '"_x', opts)

-- navigate windows with ctrl <hjkl>
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)

-- Toggle FileTree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

-- Buffer keys
vim.keymap.set('n', '<TAB>', ':BufferNext<CR>', opts)
vim.keymap.set('n', '<S-TAB>', ':BufferPrevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':BufferClose<CR>', opts)

-- Better indenting
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
