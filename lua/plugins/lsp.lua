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

-- Enable pyright
vim.lsp.enable('pyright')

-- Enable lua language server
vim.lsp.enable('lua_ls')

vim.lsp.enable('superhtml')

-- CSS language server
vim.lsp.enable('cssls')

-- Java language server
vim.lsp.enable('jdtls')

-- C language server
vim.lsp.enable('ccls')



-- Enable autocompletion
vim.lsp.config("pyright", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("lua_ls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("cssls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("superhtml", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("jdtls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("ccls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})


--
-- Show error messages
--
vim.diagnostic.config(
	{
		underline = false,
		virtual_text = {
			spacing = 2,
			prefix = "●"
		},
		update_in_insert = false,
		severity_sort = true,
	}
)
