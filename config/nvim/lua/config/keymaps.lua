local keymap = vim.keymap

--	   ____   ____   ____   ________________  |  |
--	  / ___\_/ __ \ /    \_/ __ \_  __ \__  \ |  |
--	 / /_/  >  ___/|   |  \  ___/|  | \// __ \|  |__
--	 \___  / \___  >___|  /\___  >__|  (____  /____/
--	/_____/      \/     \/     \/           \/
keymap.set("n", "<leader>zz", ":wq!<CR>")
keymap.set("n", "<leader>pv", ":Oil<CR>")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--	  __         .__
--	_/  |_  ____ |  |   ____   ______ ____  ____ ______   ____
--	\   __\/ __ \|  | _/ __ \ /  ___// ___\/  _ \\____ \_/ __ \
--	 |  | \  ___/|  |_\  ___/ \___ \\  \__(  <_> )  |_> >  ___/
--	 |__|  \___  >____/\___  >____  >\___  >____/|   __/ \___  >
--	           \/          \/     \/     \/      |__|        \/
local telescope = require("plugins.telescope")
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>lg", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>cs", builtin.colorscheme, {})

--   ____ ______
-- _/ ___\\____ \
-- \  \___|  |_> >
--  \___  >   __/
--      \/|__|
require("config.cp")
keymap.set("n", "<leader>rc", ":RunCode<CR>")
