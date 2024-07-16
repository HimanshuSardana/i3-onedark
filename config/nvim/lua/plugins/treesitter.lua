return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"javascript",
				"typescript",
				"tsx",
				"go",
				"c",
				"cpp",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},
		})
	end,
}
