require("rose-pine").setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'moon',
	dark_variant = 'moon',
	bold_vert_split = true,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = false,
	disable_italics = false,
})

-- Set colorscheme after options
vim.cmd("colorscheme rose-pine")
