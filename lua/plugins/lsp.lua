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

-- Rust language server
vim.lsp.enable('rust_analyzer')



-- Enable autocompletion
vim.lsp.config("pyright", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("lua_ls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("cssls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("superhtml", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})
vim.lsp.config("jdtls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})

-- Note to myself:
-- Don't forget to generate the json file using bear!
-- CCLS is probably not broken, you just forgot to do that again, Lars
-- 
vim.lsp.config("ccls", {on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end})

-- Rust language server
vim.lsp.config("rust_analyzer", {
	filetypes = {"rust"},
	on_attach = function(client, bufnr) enableAutoCompletion(client, bufnr) end,
	settings = {
		["rust-analyzer"] = {
			imports = {
			    granularity = {
				group = "module",
			    },
			    prefix = "self",
			},
			cargo = {
			    buildScripts = {
				enable = true,
			    },
			},
			procMacro = {
			    enable = true
			},
		}
	}
})


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
