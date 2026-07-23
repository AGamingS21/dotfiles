return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		alpha.setup(dashboard.config)

		-- vim.api.nvim_create_autocmd("BufEnter", {
		-- 	callback = function()
		-- 		if vim.bo.filetype == "alpha" and vim.fn.expand("%:t") ~= "" then
		-- 			vim.cmd("bdelete")
		-- 		end
		-- 	end,
		-- })
		-- vim.api.nvim_create_autocmd("BufDelete", {
		-- 	callback = function()
		-- 		vim.schedule(function()
		-- 			local buffers = vim.fn.getbufinfo({ buflisted = 1 })
		--
		-- 			if #buffers == 0 then
		-- 				vim.cmd("Alpha")
		-- 			end
		-- 		end)
		-- 	end,
		-- })
		--
		-- vim.api.nvim_create_autocmd("BufEnter", {
		-- 	callback = function()
		-- 		if vim.bo.filetype ~= "alpha" then
		-- 			-- remove alpha buffer if another buffer opens
		-- 			for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		-- 				if vim.bo[buf].filetype == "alpha" then
		-- 					vim.api.nvim_buf_delete(buf, { force = true })
		-- 				end
		-- 			end
		-- 		end
		-- 	end,
		-- })
	end,
}
