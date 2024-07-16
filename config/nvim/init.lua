--	___.                 .__        
--	\_ |__ _____    _____|__| ____  
-- 	| __ \\__  \  /  ___/  |/ ___\ 
-- 	| \_\ \/ __ \_\___ \|  \  \___ 
-- 	|___  (____  /____  >__|\___  >
--	     \/     \/     \/        \/ 

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader = ' '
vim.o.clipboard = 'unnamedplus'
vim.o.wrap = false
vim.tabstop = 2
vim.shiftwidth = 2
vim.expandtab = true

--	.__                        
--	|  | _____  ___________.__.
--	|  | \__  \ \___   <   |  |
--	|  |__/ __ \_/    / \___  |
--	|____(____  /_____ \/ ____|
--	          \/      \/\/     

require("config.lazy")

--	 __                                             
--	|  | __ ____ ___.__. _____ _____  ______  ______
--	|  |/ // __ <   |  |/     \\__  \ \____ \/  ___/
--	|    <\  ___/\___  |  Y Y  \/ __ \|  |_> >___ \ 
--	|__|_ \\___  > ____|__|_|  (____  /   __/____  >
--	     \/    \/\/          \/     \/|__|       \/ 

require("config.keymaps")

--                                     __  .__  __  .__                       
--   ____  ____   _____ ______   _____/  |_|__|/  |_|__|__  __ ____           
-- _/ ___\/  _ \ /     \\____ \_/ __ \   __\  \   __\  \  \/ // __ \          
-- \  \__(  <_> )  Y Y  \  |_> >  ___/|  | |  ||  | |  |\   /\  ___/          
--  \___  >____/|__|_|  /   __/ \___  >__| |__||__| |__| \_/  \___  >         
--      \/            \/|__|        \/                            \/          
--                                                         .__                
-- _____________  ____   ________________    _____   _____ |__| ____    ____  
-- \____ \_  __ \/  _ \ / ___\_  __ \__  \  /     \ /     \|  |/    \  / ___\ 
-- |  |_> >  | \(  <_> ) /_/  >  | \// __ \|  Y Y  \  Y Y  \  |   |  \/ /_/  >
-- |   __/|__|   \____/\___  /|__|  (____  /__|_|  /__|_|  /__|___|  /\___  / 
-- |__|               /_____/            \/      \/      \/        \//_____/  
--

require('config.cp')