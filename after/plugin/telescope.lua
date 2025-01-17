-- file brower start
-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
local actions = require "telescope.actions"

require("telescope").setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        ["<S-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      n = {
        ["<S-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  },

  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,

      -- NOTE: below are the default mappings values
      -- mappings = {
      --   ["i"] = {
      --     ["<A-c>"] = fb_actions.create,
      --     ["<S-CR>"] = fb_actions.create_from_prompt,
      --     ["<A-r>"] = fb_actions.rename,
      --     ["<A-m>"] = fb_actions.move,
      --     ["<A-y>"] = fb_actions.copy,
      --     ["<A-d>"] = fb_actions.remove,
      --     ["<C-o>"] = fb_actions.open,
      --     ["<C-g>"] = fb_actions.goto_parent_dir,
      --     ["<C-e>"] = fb_actions.goto_home_dir,
      --     ["<C-w>"] = fb_actions.goto_cwd,
      --     ["<C-t>"] = fb_actions.change_cwd,
      --     ["<C-f>"] = fb_actions.toggle_browser,
      --     ["<C-h>"] = fb_actions.toggle_hidden,
      --     ["<C-s>"] = fb_actions.toggle_all,
      --     ["<bs>"] = fb_actions.backspace,
      --   },
      --   ["n"] = {
      --     ["c"] = fb_actions.create,
      --     ["r"] = fb_actions.rename,
      --     ["m"] = fb_actions.move,
      --     ["y"] = fb_actions.copy,
      --     ["d"] = fb_actions.remove,
      --     ["o"] = fb_actions.open,
      --     ["g"] = fb_actions.goto_parent_dir,
      --     ["e"] = fb_actions.goto_home_dir,
      --     ["w"] = fb_actions.goto_cwd,
      --     ["t"] = fb_actions.change_cwd,
      --     ["f"] = fb_actions.toggle_browser,
      --     ["h"] = fb_actions.toggle_hidden,
      --     ["s"] = fb_actions.toggle_all,
      --   },
      -- },
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
-- file browser end

-- telescope-dap
require("telescope").load_extension("dap")

-- tab scope
require("telescope").load_extension("scope")

-- harpoon
require("telescope").load_extension('harpoon')

-- key maps
vim.keymap.set('n', '<leader>ok', ":Telescope keymaps<CR>", { desc = '[O]pen [K]ey map' })
vim.keymap.set('n', 'ta', ":Telescope scope buffers<CR>", { desc = "[T]abs: Show [A]ll [B]uffers" })

-- lsp commands
vim.keymap.set('n', '<leader>li', require('telescope.builtin').lsp_incoming_calls, { desc = 'LSP: [I]ncoming calls' })
vim.keymap.set('n', '<leader>lo', require('telescope.builtin').lsp_outgoing_calls, { desc = 'LSP: [O]utgoing calls' })
