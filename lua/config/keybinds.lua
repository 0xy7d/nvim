vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)

vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", { desc = "Open terminal horizontally" })

vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { desc = "Open terminal vertically" })

vim.keymap.set("n", "<leader>tt", ":tabnew | terminal<CR>", { desc = "Open terminal in new tab" })

