vim.g.mapleader = " "
-- Move the selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Enter to netrc
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "Open file explorer" })

-- Join the current line with the next preserving the cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Scroll up half page
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move word matches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Return lsp
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- For starting and stopping a session with the "vim-with-me"
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- copy in system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without save in vim clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- format buffer
vim.keymap.set("n", "<leader>f", function()
    require("conform").format({ bufnr = 0 })
end)

-- navigate through errors (LSP needed)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Find and replace words
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Give execution permissions to the current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Change themes
vim.keymap.set("n", "<leader>tk", function()
  vim.cmd("colorscheme kanagawa")
end, { desc = "Toggle to Kanagawa" })
vim.keymap.set("n", "<leader>tg", function()
  vim.cmd("colorscheme gruvbox-material")
end, { desc = "Toggle to Gruvbox" })

-- J and K improved
vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })
