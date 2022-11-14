local o = vim.o

o.backup = false                            -- creates a backup file
o.clipboard = "unnamedplus"                 -- allows neovim to access the system clipboard
o.cmdheight = 2                             -- more space in the neovim command line for displaying messages
o.completeopt = menuone,noselect            -- mostly just for cmp
o.conceallevel = 0                          -- so that `` is visible in markdown files
o.fileencoding = "utf-8"                    -- the encoding written to a file
o.hlsearch = true                           -- highlight all matches on previous search pattern
o.ignorecase = true                         -- ignore case in search patterns
o.mouse = "a"                               -- allow the mouse to be used in neovim
o.pumheight = 10                            -- pop up menu height
o.showmode = false                          -- we don't need to see things like -- INSERT -- anymore
o.showtabline = 2                           -- always show tabs
o.smartcase = true                          -- smart case
o.smartindent = true                        -- make indenting smarter again
o.splitbelow = true                         -- force all horizontal splits to go below current window
o.splitright = true                         -- force all vertical splits to go to the right of current window
o.swapfile = false                          -- creates a swapfile
--o.termguicolors = true                      -- set term gui colors (most terminals support this)
o.timeoutlen = 600                          -- time to wait for a mapped sequence to complete (in milliseconds)
o.undofile = true                           -- enable persistent undo
o.updatetime = 300                          -- faster completion (4000ms default)
o.writebackup = false                       -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
o.expandtab = true                          -- convert tabs to spaces
o.shiftwidth = 4                            -- the number of spaces inserted for each indentation
o.tabstop = 4                               -- insert 2 spaces for a tab
o.cursorline = true                         -- highlight the current line
o.number = true                             -- set numbered lines
o.relativenumber = true                     -- set relative numbered lines
o.numberwidth = 4                           -- set number column width to 2 {default 4}

o.signcolumn = "yes"                        -- always show the sign column, otherwise it would shift the text each time
o.wrap = true                               -- display lines as one long line
o.linebreak = true                          -- companion to wrap, don't split words
o.scrolloff = 8                             -- minimal number of screen lines to keep above and below the cursor
o.sidescrolloff = 8                         -- minimal number of screen columns either side of cursor if wrap is `false`
--o.guifont = "monospace:h17"                 -- the font used in graphical neovim applications
o.termguicolors = true
o.showcmd = true                            -- show leader key
