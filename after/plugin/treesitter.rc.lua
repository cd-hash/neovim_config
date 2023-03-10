local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "graphql",
    "regex",
    "typescript",
    "javascript",
  },
  --- Automatically install missing parsers when entering buffer
  auto_install = true,

  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    max_file_lines = nil
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
