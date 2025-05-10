return {
	"williamboman/mason.nvim",
	dependencies = {
		{ "williamboman/mason-lspconfig.nvim", version = "^1.0.0" },
    { "WhoIsSethDaniel/mason-tool-installer.nvim", commit = "1255518cb067e038a4755f5cb3e980f79b6ab89c" },
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"eslint",
				"html",
				"cssls",
				"bashls",
				"dockerls",
				"svelte",
				"lua_ls",
				"pyright",
				"clangd",
				"sqlls",
        "jdtls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"clang-format", -- C family formatter
				
        -- Linters
				"sonarlint-language-server",
				"cpplint",
				"pylint",
				"flake8",
				"eslint_d",
			},
		})
	end,
}
