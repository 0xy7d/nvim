return {
    {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
	    "nvim-tree/nvim-web-devicons", -- optional, for file icons
	},
	config = function()
	    require("nvim-tree").setup({
		view = {
		    width = 30, -- sidebar width
		    side = "left",
		},
		renderer = {
		    highlight_git = true,
		    indent_markers = { enable = true },
		},
		filters = {
		    dotfiles = false, -- show hidden files if false
		},
	    })

	    -- Keymaps
	    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
	    -- Toggle focus between NvimTree and editor
	    vim.keymap.set("n", "<leader>h", function()
		if vim.bo.filetype == "NvimTree" then
		    vim.cmd("wincmd l") -- jump right to editor
		else
		    vim.cmd("wincmd h") -- jump left (tree, if open)
		end
	    end, { noremap = true, silent = true })

	    vim.keymap.set("n", "<leader>l", function()
		if vim.bo.filetype == "NvimTree" then
		    vim.cmd("wincmd l") -- stay consistent: right = editor
		else
		    vim.cmd("wincmd l") -- move right anyway
		end
	    end, { noremap = true, silent = true })

	end,
    },
}

