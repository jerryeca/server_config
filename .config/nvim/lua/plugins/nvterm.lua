-- nvterm configuration
require("nvterm").setup({
  terminals = {
    layout = "horizontal",  -- Default layout for terminals
  },
  start_in_insert = true,  -- Start in insert mode
  persist_size = true,     -- Keep terminal size consistent
})

-- Keybindings to toggle terminal layouts
vim.api.nvim_set_keymap('n', '<M-t>', ':lua require("nvterm.terminal").toggle("horizontal")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>th', ':lua require("nvterm.terminal").toggle("horizontal")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tv', ':lua require("nvterm.terminal").toggle("vertical")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tf', ':lua require("nvterm.terminal").toggle("float")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':lua require("nvterm.terminal").close()<CR>', { noremap = true, silent = true })
-- Custom keybinding to exit terminal mode (Ctrl-W N)
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-N>', { noremap = true, silent = true })

