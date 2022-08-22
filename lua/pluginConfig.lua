
-- Treesitter configuration
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "cpp", "html", "lua", "rust", "python", "vue", "cmake", "javascript", "css" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  indent = {
    enable = true
  },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- Dicord rich prescence settings
require("presence"):setup({
  auto_update = true,
  neovim_image_text = "Nvim better than vscode >:)",
})

require("nvim-tree").setup()

-- Vim closetag
-- filenames like *.xml, *.html, *.xhtml, ...
--  These are the file extensions where this plugin is enabled.

vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

-- filenames like *.xml, *.xhtml, ...
-- This will make the list of non-closing tags self-closing in the specified files.

vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx'

 -- filetypes like xml, html, xhtml, ...
 -- These are the file types where this plugin is enabled.

vim.g.closetag_filetypes = 'html,xhtml,phtml,vue'

 -- filetypes like xml, xhtml, ...
 -- This will make the list of non-closing tags self-closing in the specified files.

vim.g.closetag_xhtml_filetypes = 'xhtml,jsx'

 -- integer value [0|1]
 -- This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)

vim.g.closetag_emptyTags_caseSensitive = 1

 -- dict
 -- Disables auto-close if not in a "valid" region (based on filetype)

-- vim.g.closetag_regions = [[
--  'typescript.tsx': 'jsxRegion,tsxRegion',
--  'javascript.jsx': 'jsxRegion',
--  'typescriptreact': 'jsxRegion,tsxRegion',
--  'javascriptreact': 'jsxRegion',
-- ]]

 -- Shortcut for closing tags, default is '>'

vim.g.closetag_shortcut = '>'

 -- Add > at current position without closing the current tag, default is ''

vim.g.closetag_close_shortcut = '<leader>>'

-- Configure lualine
require('lualine').setup({
  theme = 'auto',
  theme = 'material-stealth'
})

-- Configure emmet for better html boilerplate
vim.cmd([[
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."\t<head>\n"
\              ."\t\t<meta charset=\"${charset}\"/>\n"
\              ."\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n"
\              ."\t\t<title></title>\n"
\              ."\t</head>\n"
\              ."\t<body>\n\t\t${child}|\n\t</body>\n"
\              ."</html>",
\    },
\  },
\}

let g:user_emmet_leader_key=","
]])

-- Load coc auto completion config, (I don't know it in luia :(()

vim.cmd("so ~/.config/nvim/coc.vim")

-- The material theme
require('material').setup({
  itialics = {
    comments = true,
    strings = true
  },

  lualine_style = "stealth"
})
