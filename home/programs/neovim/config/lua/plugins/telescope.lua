return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup()

		vim.api.nvim_set_keymap("n", "<Space>f", ":Telescope find_files<CR>", { noremap = true, silent = true })
	end,
}
