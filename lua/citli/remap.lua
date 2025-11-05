
vim.g.mapleader = " "

vim.keymap.set("n","<Leader>pv",":Ex<CR>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

local harpoon_ui = require('harpoon.ui')
local harpoon_mark = require('harpoon.mark')
vim.keymap.set('n', '<leader>hh', harpoon_ui.toggle_quick_menu, {desc = 'Harpoon toggle ui'})
vim.keymap.set('n', '<leader>ha', harpoon_mark.add_file, {desc = 'Harpoon add file'})
vim.keymap.set('n', '<c-h>', function() harpoon_ui.nav_file(1)end, {desc = 'Harpoon navigate to file 1'})
vim.keymap.set('n', '<c-j>', function() harpoon_ui.nav_file(2)end, {desc = 'Harpoon navigate to file 2'})
vim.keymap.set('n', '<c-k>', function() harpoon_ui.nav_file(3)end, {desc = 'Harpoon navigate to file 3'})
vim.keymap.set('n', '<c-l>', function() harpoon_ui.nav_file(4)end, {desc = 'Harpoon navigate to file 4'})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "Q", "<nop>")
-- grr -> see references 
vim.keymap.set("n", "<A-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<A-k>", "<cmd>cprev<CR>zz")
-- ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
-- ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
-- ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--["<C-Space>"] = cmp.mapping.complete(),

-- next greatest remap ever : asbjornHaland
-- yanking to the big buffer
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- when pasting and trying to substitute something to not override 
-- whats in the buffer
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set({ "n", "v" ,"i"}, "<c-s>", "<cmd>w<CR><Esc>")

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })

