-- set leader key to space
vim.g.mapleader = " "

-- Set the path to the Jest executable
vim.g.jester_jest_command = "./node_modules/.bin/jest"

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- jester keymappings
-- Set custom keybindings for Jester
keymap.set("n", "<Leader>t", ':lua require("jester").run()<CR>', { noremap = true, silent = true }) -- Run nearest test(s) under the cursor
keymap.set("n", "<Leader>s", ':lua require("jester").run_file()<CR>', { noremap = true, silent = true }) -- Run current file
keymap.set("n", "<Leader>l", ':lua require("jester").run_last()<CR>', { noremap = true, silent = true }) -- Run last test(s)

keymap.set("n", "<Leader>dt", ':lua require("jester").debug()<CR>', { noremap = true, silent = true }) -- Debug nearest test(s) under the cursor
keymap.set("n", "<Leader>ds", ':lua require("jester").debug_file()<CR>', { noremap = true, silent = true }) -- Debug current file
keymap.set("n", "<Leader>dl", ':lua require("jester").debug_last()<CR>', { noremap = true, silent = true }) -- Debug last test(s)

keymap.set("n", "<Leader>so", '<Cmd>lua require("dap").step_over()<CR>', { noremap = true, silent = true }) -- step over while debugging
keymap.set("n", "<Leader>c", '<Cmd>lua require("dap").continue()<CR>', { noremap = true, silent = true }) -- continue while debugging
keymap.set("n", "<Leader>tb", '<Cmd>lua require("dap").toggle_breakpoint()<CR>', { noremap = true, silent = true }) -- toggle breakpoint while debugging

----------------------
-- Plugin Keybinds
----------------------

-- vim-editor-tab-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true }) -- toggle file explorer
keymap.set("n", "<C-e>", ":NvimTreeFocus<CR>", { silent = true }) -- move cursor to NvimTree

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
keymap.set("n", "<leader>ng", "<cmd>Neogit<cr>") -- Open Neogit popup

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- toggle terminal
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
