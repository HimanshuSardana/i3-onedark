function RunCode()
	local ext = vim.fn.expand("%:e")

	if ext == "cpp" then
		vim.cmd("w")
		vim.cmd("!g++ % -o %:r && ./%:r < input.txt > output.txt")
	elseif ext == "py" then
		vim.cmd("w")
		vim.cmd("!python3 % < input.txt > output.txt")
	else
		print("Unsupported file type")
	end
end

vim.api.nvim_exec(
	[[
  command! RunCode lua RunCode()
]],
	false
)
