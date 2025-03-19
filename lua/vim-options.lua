-- Returns cursor to underline in terminal
vim.cmd([[
  au VimLeave * set guicursor=a:hor20-blinkwait800
]])

-- Tabs and other various formatting niceties
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu rnu") -- Turns on hybrid numbers
vim.cmd("set scrolloff=5")
vim.cmd("set ignorecase")
vim.cmd("set autoindent")
vim.cmd("set mouse=nicr")
vim.cmd("set cc=999")
vim.cmd("inoremap <C-d> <Del>") -- Maps Ctrl+d to Del key
vim.g.mapleader= " "

-- Java specific tab spaces
vim.cmd("au BufNewFile,BufRead *.java setf java ")
vim.cmd("autocmd Filetype java setlocal ts=4 sts=4 sw=4 cc=80")

-- CSS specific tab spaces
vim.cmd("au BufNewFile,BufRead *.css setf css")
vim.cmd("autocmd Filetype css setlocal ts=4 sts=4 sw=4 cc=80")

-- HTML specific tab spaces
vim.cmd("au BufNewFile,BufRead *.html setf html")
vim.cmd("autocmd Filetype css setlocal ts=2 sts=2 sw=2 cc=80")

-- Javascript specific tab spaces
vim.cmd("au BufNewFile,BufRead *.css setf css")
vim.cmd("autocmd Filetype css setlocal ts=4 sts=4 sw=4 cc=80")

-- Remaps arrow keys to nothing
vim.cmd("noremap <Up> <NOP>")
vim.cmd("noremap <Down> <NOP>")
vim.cmd("noremap <Left> <NOP>")
vim.cmd("noremap <Right> <NOP>")
