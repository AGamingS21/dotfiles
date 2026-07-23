return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 15,
			open_mapping = [[<C-\>]],
			direction = "horizontal",
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			persist_size = true,
			close_on_exit = true,
			shell = vim.o.shell,

			highlights = {
				Normal = {
					guibg = "#1e1e1e",
				},
				NormalFloat = {
					guibg = "#1e1e1e",
				},
			},
		})
		-- From terminal: move focus back to editor above
		vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])

		-- Move around splits while staying open
		vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]])
		vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]])
		vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]])
	end,
}
