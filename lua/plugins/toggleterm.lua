return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({})
		vim.keymap.set("n", "<F5>", "<cmd>ToggleTerm direction=float<CR>", {})
		vim.keymap.set("t", "<F5>", "<cmd>ToggleTerm direction=float<CR>", {})

		vim.keymap.set("n", "<F6>", "<cmd>ToggleTerm direction=horizontal<CR>", {})
		vim.keymap.set("t", "<F6>", "<cmd>ToggleTerm direction=horizontal<CR>", {})

		vim.keymap.set("n", "<F7>", "<cmd>ToggleTerm size=60 direction=vertical<CR>", {})
		vim.keymap.set("t", "<F7>", "<cmd>ToggleTerm size=60 direction=vertical<CR>", {})
	end,
}
