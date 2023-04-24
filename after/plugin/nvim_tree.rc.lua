local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

nvim_tree.setup()

vim.keymap.set(
  'n', '<leader>tt', ':NvimTreeToggle<CR>', {
  noremap = true
})
