-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- highlights under cursor
vim.keymap.set("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })

-- Terminal Mappings
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
vim.keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
vim.keymap.set("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

-- windows
vim.keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
vim.keymap.set("n", "<leader>wq", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

-- tabs
vim.keymap.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Navigate
vim.keymap.set("n", "j", "jzz", { desc = "Go down and center" })
vim.keymap.set("n", "k", "kzz", { desc = "Go up and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Go down and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Go up and center" })

-- Navigate buffer page horizontal
vim.keymap.set("n", "<C-i>", "4zl", { remap = true, desc = "Scrol tab/buffer to the right" })
vim.keymap.set("n", "<C-e>", "4zh", { remap = true, desc = "Scrol tab/buffer to the left" })

-- Delete and Enter file above and below
vim.keymap.set("n", "<BS>", "kdd", { desc = "Delete line above" })
vim.keymap.set("n", "<CR>", "O<Esc>j", { desc = "I'm not remember what this's for" })

-- This is keymap for LSP navigate
vim.keymap.set("n", "g*", "g*zz", { remap = true, desc = "Go to the same name" })
vim.keymap.set("n", "g#", "g#zz", { remap = true, desc = "Go to the same name" })
vim.keymap.set("n", "gD", "gDzz", { remap = true, desc = "Go to Declaration" })
vim.keymap.set("n", "gd", "gdZZ", { remap = true, desc = "Go to definition" })

vim.keymap.set("x", "<Tab>", ">gv", { desc = "Tab indent selection to the right" })
vim.keymap.set("x", "<S-Tab>", "<gv", { desc = "Tab indent selection to the left" })

-- This is for delete change, replace action to be do under _ registry
vim.keymap.set({ "n" }, "p", '"*p', { desc = "Paste from clipboard to the right of cursor" })
vim.keymap.set({ "n" }, "P", '"*P', { desc = "Paste from clipboard to the left of cursor" })

-- Greatest keymap ever for VsCode like copy and paste
vim.keymap.set({ "x", "v" }, "p", "\"_dP", { desc = "Paste from clipboard overwrite the selection" })

vim.keymap.set({ "n", "x", "v" }, "y", '"*y', { desc = "Yank to clipboard" })

vim.keymap.set({ "n", "v", "x" }, "r", '"_r', { desc = "Replace and send deleted char to blackhole register" })
vim.keymap.set({ "n", "v", "x" }, "d", '"_d', { desc = "Delete to blackhole register" })
vim.keymap.set({ "n", "v", "x" }, "x", '"_x', { desc = "Delete current character under cursor to blackhole register" })
vim.keymap.set({ "n", "v", "x" }, "c", '"_c', { desc = "Change option and send deleted strings to blackhole register" })

vim.keymap.set({ "n", "v", "x" }, "D", '"*d', { desc = "Cut the selection" })

vim.keymap.set({ "n" }, "<leader>id", "0\"_d$", { desc = "Delete content of the line but keep the line exists" })
vim.keymap.set({ "n" }, "<leader>iD", "0\"*d$", { desc = "Cut content of the line but keep the line exists" })

vim.keymap.set({ "n" }, "<leader>iy", "0y$", { desc = "Copy the content of a line" })

-- This is for resizing window MacOS specific
vim.keymap.set({ "n", "t" }, "˚", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set({ "n", "t" }, "∆", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set({ "n", "t" }, "˙", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set({ "n", "t" }, "¬", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- This is for global config for terminal mode
vim.keymap.set("t", "<C-s>", "<C-\\><C-n>", { desc = "esc outside of insert mode in terminal to navigate" })

-- This is for global selection
vim.keymap.set({ "n", "i" }, "<C-a>", function() vim.cmd("normal! ggVG") end, { desc = "Global selection" })

vim.keymap.set({ "n", "v", "x" }, "<leader>lt", "<cmd>Leet tabs<cr>", { desc = "Open question lists" })
vim.keymap.set({ "n", "v", "x" }, "<leader>lc", "<cmd>Leet console<cr>", { desc = "Open console" })
vim.keymap.set({ "n", "v", "x" }, "<leader>li", "<cmd>Leet info<cr>", { desc = "Open question info" })
vim.keymap.set({ "n", "v", "x" }, "<leader>ls", "<cmd>Leet submit<cr>", { desc = "Submit the answer" })
vim.keymap.set({ "n", "v", "x" }, "<leader>lr", "<cmd>Leet random<cr>", { desc = "Select a random question" })
vim.keymap.set({ "n", "v", "x" }, "<leader>ld", "<cmd>Leet desc<cr>", { desc = "Toggle question description" })
vim.keymap.set({ "n", "v", "x" }, "<leader>ll", "<cmd>Leet lang<cr>", { desc = "Select language question" })
vim.keymap.set({ "n", "v", "x" }, "<leader>lm", "<cmd>Leet menu<cr>", { desc = "Go to menu page" })
