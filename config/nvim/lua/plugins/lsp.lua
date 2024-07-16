return {
	{
		--   _____ _____    __________   ____
		--  /     \\__  \  /  ___/  _ \ /    \
		-- |  Y Y  \/ __ \_\___ (  <_> )   |  \
		-- |__|_|  (____  /____  >____/|___|  /
		--       \/     \/     \/           \/
		--
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		--   _____ _____    __________   ____           |  |   ____________   ____  ____   _____/ ____\__| ____
		--  /     \\__  \  /  ___/  _ \ /    \   ______ |  |  /  ___/\____ \_/ ___\/  _ \ /    \   __\|  |/ ___\
		-- |  Y Y  \/ __ \_\___ (  <_> )   |  \ /_____/ |  |__\___ \ |  |_> >  \__(  <_> )   |  \  |  |  / /_/  >
		-- |__|_|  (____  /____  >____/|___|  /         |____/____  >|   __/ \___  >____/|___|  /__|  |__\___  /
		--       \/     \/     \/           \/                    \/ |__|        \/           \/        /_____/
		--
		"williamboman/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "gopls", "pyright", "biome" },
			})
		end,
	},
	{
		--             .__                  .__                                      _____.__
		--   _______  _|__| _____           |  |   ____________   ____  ____   _____/ ____\__| ____
		--  /    \  \/ /  |/     \   ______ |  |  /  ___/\____ \_/ ___\/  _ \ /    \   __\|  |/ ___\
		-- |   |  \   /|  |  Y Y  \ /_____/ |  |__\___ \ |  |_> >  \__(  <_> )   |  \  |  |  / /_/  >
		-- |___|  /\_/ |__|__|_|  /         |____/____  >|   __/ \___  >____/|___|  /__|  |__\___  /
		--      \/              \/                    \/ |__|        \/           \/        /_____/
		--
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.cssls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.html.setup({})
			lspconfig.gopls.setup({})
			lspconfig.eslint.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{

		--              .__  .__            .__
		--   ____  __ __|  | |  |           |  |   ______
		--  /    \|  |  \  | |  |    ______ |  |  /  ___/
		-- |   |  \  |  /  |_|  |__ /_____/ |  |__\___ \
		-- |___|  /____/|____/____/         |____/____  >
		--      \/                                    \/
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.clangformat,
					null_ls.builtins.formatting.prettierd,
					null_ls.builtins.formatting.crlfmt,
					null_ls.builtins.formatting.prettier,
				},
			})

			vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, {})
		end,
	},
}
