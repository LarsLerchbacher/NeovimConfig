--
-- My neovim keymaps
-- Licensed under the MIT License. See LICENSE file in the root directory.
--

-- Mapleader = space
vim.g.mapleader = ' '

--
-- Telescope
--
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', telescope.find_files)
vim.keymap.set('n', '<leader>fg', telescope.live_grep)


--
-- Explore
--
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)


--
-- Copying to system clipboard 
--
vim.keymap.set('v', '<leader>y', '"+y')


--
-- Don't overide register while pasting
--

vim.keymap.set('n', 'p', 'P')
vim.keymap.set('v', 'p', 'P')

--
-- Harpoon
--

vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file)
vim.keymap.set('n', '<leader>hh', require('harpoon.ui').toggle_quick_menu)
vim.keymap.set('n', '<leader>h1', function() require('harpoon.ui').nav_file(1) end)
vim.keymap.set('n', '<leader>h2', function() require('harpoon.ui').nav_file(2) end)
vim.keymap.set('n', '<leader>h3', function() require('harpoon.ui').nav_file(3) end)
vim.keymap.set('n', '<leader>h4', function() require('harpoon.ui').nav_file(4) end)
vim.keymap.set('n', '<leader>h5', function() require('harpoon.ui').nav_file(5) end)

--
-- Packer
--
vim.keymap.set('n', '<leader>ps', require('packer').sync)
