-- to avoid repeating this

local settings = {
  number = true, -- Side numbers
  tabstop = 2, -- Tabs are two spaces
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smarttab = true,
  autoindent = true, -- Auto indentation
  mouse = nill, -- So that vim can use the mouse
  encoding = 'utf-8', -- The encoding that vim uses
  -- clipboard = 'unnamedplus', -- So the clipboard is default
  termguicolors = true, -- True console colors
}

-- Set those settings
for i, v in pairs(settings) do
  vim.opt[i] = v
end

-- Set the mapleader to a more reachable spot
vim.g.mapleader = ","

-- So we can easily and safely map keys
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Map keys
map('n', '<leader>f', ':Files<CR>') -- FZF
map('n', '<leader>T', ':NvimTreeToggle<CR>') -- Toggle Nvim tree
map('n', '<leader>t', ':NvimTreeFocus<CR>') -- Focus Nvim tree
map('n',  'f', '<Plug>Sneak_,') -- Replace the comma for vim sneak (bc , is already mapped)

-- if vim.bo.filetype == 'cpp' then
--   map('n', '<leader>r', ':Neomake!<CR>')
-- end

-- vim.api.nvim_create_autocmd(
--   { "FileType" },
--   { pattern = { ".c", ".cpp", ".h", ".hpp" }, command = "map <leader>r :Neomake!<CR>" }
-- )

-- Set the theme
vim.g.material_style = "deep ocean"
vim.cmd([[ colo material ]])
vim.g.t_ut=''
