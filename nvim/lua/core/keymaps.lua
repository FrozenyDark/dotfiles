local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "To normal mode" })

-- Move selected rows up and down
-- keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "" })
-- keymap.set("v", "<M-k>", ":m '>-2<CR>gv=gv", { desc = "" })

-- Connect rows without moving
keymap.set("n", "J", "mzJ`z", { desc = "Connect rows without moving" })

-- Increment / decrement a number
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement" })

-- Move half page or next search result and move cursor to the center
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move half page down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move half page up" })
keymap.set("n", "n", "nzzzv", { desc = "Next search result" })
keymap.set("n", "N", "Nzzzv", { desc = "Previous search result" })

-- Paste without overwriting a buffer
keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without overwriting a buffer" })

-- Replace a word in the whole file
keymap.set(
	"n",
	"<leader>s",
	":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
	{ desc = "Replace a word under cursor in the whole file" }
)

-- Replace in selected area
keymap.set("v", "<leader>s", ":s///gI<Left><Left><Left><Left>", { desc = "Replace in selected area" })

-- Split screen
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Open in the right" }) -- Open in the right
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Open in the bottom" }) -- Open in the bottom
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make panes equally sized" }) -- Make panes equally sized
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close a pane" }) -- Close file
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Maximize a pane" }) -- Maximize file

-- keymap.set("n", "<C-h>", "<C-w>h", { desc = "Select left pane" })
-- keymap.set("n", "<C-j>", "<C-w>j", { desc = "Select bottom pane" })
-- keymap.set("n", "<C-k>", "<C-w>k", { desc = "Select top pane" })
-- keymap.set("n", "<C-l>", "<C-w>l", { desc = "Select right pane" })

keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Open new tab" }) -- Open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close a tab" }) -- Close tab
keymap.set("n", "<leader>tl", ":tabn<CR>", { desc = "Right tab" }) -- Next tab
keymap.set("n", "<leader>th", ":tabp<CR>", { desc = "Left tab" }) -- Previous tab

keymap.set("n", "<leader>e", ":Neotree filesystem toggle left<CR>", { desc = "Open Neo-Tree file explorer" }) -- Open explorer

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy finder" }) -- Fuzzy finder
-- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Search something" }) -- Search something
-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "" }) -- ??
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Show buffers" }) -- Show buffers (opened files)
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Search in help" }) -- Search in help file
keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Show diagnostics" }) -- Show project's diagnostics

-- Toggle terminal
keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>", { desc = "Open float terminal" }) -- Open float terminal
keymap.set("t", "<C-\\>", "<cmd>ToggleTerm<cr>", { desc = "Close terminal" }) -- Close terminal
