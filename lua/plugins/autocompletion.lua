--
-- Enables autocompletion for my language server(s)
-- Licensed under the MIT License. See LICENSE file in the root directory.
--

function enableAutoCompletion(client, bufnr)
	local chars = {}
	local triggerChars = ".abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ<"

	triggerChars:gsub(".", function(c) table.insert(chars,c) end)

	client.server_capabilities.completionProvider.triggerCharacters = chars
	vim.lsp.completion.enable(true, client.id, bufnr, {
		autotrigger = true,
		convert = function(item)
          		return { abbr = item.label:gsub("%b()", "") }
		end,
      })

      -- trigger autocompletion with ctrl + space
      vim.keymap.set("i", "<C-space>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
end

vim.lsp.config("pyright", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("lua_ls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("cssls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("superhtml", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("jdtls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})

