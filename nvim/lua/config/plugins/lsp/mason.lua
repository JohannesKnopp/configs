return {
	'williamboman/mason.nvim',
	dependencies = {
		'williamboman/mason-lspconfig.nvim',
		'WhoIsSethDaniel/mason-tool-installer.nvim',
	},
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		local mason_tool_installer = require('mason-tool-installer')

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			pip = {
				upgrade_pip = true,
			}
		})

		mason_lspconfig.setup({
			ensure_installed = {
				'lua_ls',
				'html',
				'cssls',
				'pyright',
				'emmet_ls',
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				'prettier',
				'isort',
				'black',
				'pylint',
				'eslint_d',
			}
		})
	end,
}
