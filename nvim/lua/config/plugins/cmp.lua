return {
	'hrsh7th/nvim-cmp',
	event = 'InsertEnter',
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			-- follow latest release.
			version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim",   -- vs-code like pictograms
	},
	config = function()
		-- TODO keybindings
		local cmp = require('cmp')
		local luasnip = require('luasnip')
		local lspkind = require('lspkind')
		-- require('lspkind.loaders.from_vscode').lazy_load()

		cmp.setup({
			-- preselect = nil,
			completion = {
				completeopt = 'menu,menuone,preview',
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<Tab>'] = cmp.mapping.confirm({ select = true }),
				['<Enter>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'buffer' },
				{ name = 'path' },
			}),
			-- formatting = {
			-- 	format = lspkind.cmp_format({
			-- 		maxwidth = 50,
			-- 		ellipsis_char = '...',
			-- 	}),
			-- },
		})
	end,
}
