local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

nvim_tree.setup()

vim.keymap.set(
  'n', '<leader>tt', ':NvimTreeToggle<CR>', {
  noremap = true
})
