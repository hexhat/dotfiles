vim.g.mapleader = " "
-- Map Ctrl-Y to Up arrow in command mode
vim.keymap.set('c', '<Up>', '<C-y>', { noremap = true, silent = true })

-- Map Ctrl-E to Down arrow in command mode
vim.keymap.set('c', '<Down>', '<C-e>', { noremap = true, silent = true })

-- Map '<' in visual mode to indent left and reselect the visual selection
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })

-- Map '>' in visual mode to indent right and reselect the visual selection
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })

-- Map Ctrl-^ to Alt-q in normal mode
vim.keymap.set('n', '<A-q>', '<C-^>', { noremap = true, silent = true })



-- TODO remap C-y & C-e on arrows # FIX not working for now
