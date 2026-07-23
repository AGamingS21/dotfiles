return {
	{
		"echasnovski/mini.bufremove",
		version = false,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({
				options = {
					mode = "buffers",
					offsets = {
						{
							filetype = "neo-tree",
							text = "File Explorer",
							highlight = "Directory",
							seperator = true,
						},
					},
				},
			})
			vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>")
			vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>")
			vim.keymap.set("n", "<leader>x", function()
				local bufs = vim.fn.getbufinfo({ buflisted = 1 })
				if #bufs == 1 then
					require("mini.bufremove").delete(0, false)
					vim.cmd("Alpha")
				else
					require("mini.bufremove").delete(0, false)
				end
			end)
		end,
	},
}
