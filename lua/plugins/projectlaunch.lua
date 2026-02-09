
local projectlaunch = require("projectlaunch")
vim.keymap.set('n', "<leader>ll", projectlaunch.toggle_main_menu, {noremap = true, expr = false, buffer = false})
vim.keymap.set('n', "<leader>le", projectlaunch.edit_config, {noremap = true, expr = false, buffer = false})
vim.keymap.set('n', "<leader>lf", projectlaunch.toggle_float, {noremap = true, expr = false, buffer = false})

