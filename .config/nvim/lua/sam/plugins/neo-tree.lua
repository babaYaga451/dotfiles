return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>ee", "<cmd>Neotree toggle left<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>Neotree filesystem reveal left<CR>",
			{ desc = "File explorer on current file" }
		) -- file explorer on current file
		keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
}
