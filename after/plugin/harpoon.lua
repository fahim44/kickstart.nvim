local harpoonMark = require("harpoon.mark")
local harpoonUI = require("harpoon.ui")


vim.keymap.set('n', '<leader>ha', harpoonMark.add_file, { desc = '[H]arpoon [A]dd file' })

vim.keymap.set('n', '<leader>hj', function() harpoonUI.nav_file(1) end, { desc = '[H]arpoon go to file 1' })
vim.keymap.set('n', '<leader>hk', function() harpoonUI.nav_file(2) end, { desc = '[H]arpoon go to file 2' })
vim.keymap.set('n', '<leader>hh', function() harpoonUI.nav_file(3) end, { desc = '[H]arpoon go to file 3' })
vim.keymap.set('n', '<leader>hl', function() harpoonUI.nav_file(4) end, { desc = '[H]arpoon go to file 4' })

vim.keymap.set('n', '<leader>hp', harpoonUI.nav_prev, { desc = '[H]arpoon go to [P]revious file' })
vim.keymap.set('n', '<leader>hn', harpoonUI.nav_next, { desc = '[H]arpoon go to [N]ext file' })

vim.keymap.set('n', '<leader>hm', ":Telescope harpoon marks<CR>", { desc = "[H]arpoon show [M]enu" })
