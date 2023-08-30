-- go to previous selected line}} 'n'}} <C-i>
-- go to next selected line}} 'n'}} <C-o>
-- replace same pattern from multiple place}} 'v'}} :s/"to be replaced pattern"/"new pattern"
-- go up}} 'i'}} <C-p>
-- go down}} 'i'}} <C-n>
--

-- debug
local dapGo = require('dap-go')
vim.keymap.set('n', '<leader>dgt', dapGo.debug_test, { desc = '[D]ebug: [G]o [T]est' })

-- yank-paste in different register
vim.keymap.set('n', '<leader>p', '\"0p', { desc = '[P]aste without replace' })
vim.keymap.set('v', '<leader>p', '\"0p', { desc = '[P]aste without replace' })

vim.keymap.set('n', '<leader>oh', vim.lsp.buf.hover, { desc = '[O]pen [H]over window' })

-- navigate between buffers
vim.keymap.set('n', 'tp', ":bprev<CR>", { desc = 'Navigate previous buffer' })
vim.keymap.set('n', 'tn', ":bnext<CR>", { desc = 'Navigate next buffer' })
