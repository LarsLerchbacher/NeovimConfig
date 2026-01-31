--
-- Lars Lerchbacher's neovim config
-- Licensed under the MIT License. See LICENSE file in the root directory.
--


-- Enable the plugin manger 
require('plugins/Packer')

-- Enable changed keymaps
require('keymaps')

-- Enable treesitter (syntax highlighter)
require('plugins/treesitter')

-- Enable autocompletion
require('plugins/autocompletion')

-- Enable pyright
vim.lsp.enable('pyright')

-- Enable lua language server
vim.lsp.enable('lua_ls')

-- Enable the colorizer
vim.cmd("let g:colorizer_auto_color = 1")

-- Enable line numbers
vim.cmd("set number")
vim.cmd("set number relativenumber")

-- activate autocompletion
vim.opt.completeopt = { "menuone", "noselect", "popup" }

-- Disable search highlighting after end of search
vim.cmd('set nohlsearch')

-- enable incremental search
vim.cmd('set incsearch')

