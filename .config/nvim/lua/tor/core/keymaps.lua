vim.g.mapleader = " "
vim.keymap.set("n", "<leader>p", vim.cmd.Ex, { desc = "Netrw" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save current buffer" })


-- if buffer is .tex file create a keymap that compiles it
vim.keymap.set("n", "<leader><enter>", function()
    if vim.bo.filetype == "tex" then
	vim.cmd("w")
	vim.cmd("silent !pdflatex %")
    end
end, { desc = "Save and Compile .tex file" })
