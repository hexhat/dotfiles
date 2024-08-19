local o = vim.opt -- TODO RTFM
local g = vim.g -- TODO RTFM
local tabwidth = 4 -- default value for tab/spaces size

g.loaded_netrw = 1; g.loaded_netrwPlugin = 1 -- disable netrw
o.updatetime = 750 -- internal operations update interval, also used by some plugins

o.number = true -- enable numbers at the left
o.relativenumber = true -- enable relative numbers

o.splitbelow = true -- open hrz windows from the bottom side
o.splitright = true -- open vrt windows from the right side

o.wrap = false -- disable line wrapping by default (enable per-filetype)
o.breakindent = true -- with wrap enabled inherit indentaion visually

o.expandtab = true -- insert spaces with <tab> press by default
o.tabstop = tabwidth -- size of tab character in spaces... spacing
o.shiftwidth = tabwidth -- number of spaces to insert on <, >, autoindent
o.softtabstop = tabwidth -- number of spaces to insert on <tab> (expandtab)

o.ignorecase = true -- enable for smartcase to work and for autocomplete in cm
o.smartcase = true -- case-insensitive search for all-lowercased patterns

o.cc = '0' -- set default max line length (constraints better to do in filetypes)

-- o.clipboard -- TODO RTFM

o.scrolloff = 0 -- lines offset for scrolling

o.virtualedit = 'block' -- :help 've' TODO

o.inccommand = 'split' -- preview substitution `:%s`

o.termguicolors = true -- true color support (modern terminals)

o.langmap = require('Neovim/langmapru') -- ability to work in cmd mode from ru layout



require('Neovim/keybindings')


-- TODO nohl to key

-- vim.fn: access to vimscript functions

