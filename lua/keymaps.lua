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
vim.keymap.set('n', '<leader>ff', telescope.find_files)
vim.keymap.set('n', '<leader>fg', telescope.live_grep)


--
-- Explore
--
vim.keymap.set('n', '<leader>ee', vim.cmd.Ex)

