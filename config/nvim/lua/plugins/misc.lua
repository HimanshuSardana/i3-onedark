--	        .__                    .__  .__
--	  _____ |__| ______ ____  ____ |  | |  | _____    ____   ____  ____  __ __  ______
--	 /     \|  |/  ___// ___\/ __ \|  | |  | \__  \  /    \_/ __ \/  _ \|  |  \/  ___/
--	|  Y Y  \  |\___ \\  \__\  ___/|  |_|  |__/ __ \|   |  \  ___(  <_> )  |  /\___ \
--	|__|_|  /__/____  >\___  >___  >____/____(____  /___|  /\___  >____/|____//____  >
--	      \/        \/     \/    \/               \/     \/     \/                 \/

return {
	{
		-- barbeque (bar at top)
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {},
	},
	{
		-- highlightedyank.nvim
		"machakann/vim-highlightedyank",
	},
	{
		-- todo-comments.nvim
		"folke/todo-comments.nvim",
		opts = {},
	},
	{
		-- noice.nvim
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		-- Comment.nvim
		"numToStr/Comment.nvim",
	},

	{
		-- lualine.nvim
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup()
		end,
	},
	{
		-- alpha.nvim
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
	{
		-- flash.nvim
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
	{
		"m4xshen/hardtime.nvim",
		config = function()
			require("hardtime").setup()
		end,
	},
}
