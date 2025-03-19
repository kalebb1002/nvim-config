-- My init.lua for Neovim

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
vim.cmd("inoremap <C-d> <Del>") -- Maps Ctrl+d to Del key
vim.g.mapleader= " "

-- Java specific tab spaces
vim.cmd("au BufNewFile,BufRead *.java setf java ")
vim.cmd("autocmd Filetype java setlocal ts=4 sts=4 sw=4")
vim.cmd("set cc=80")

-- Remaps arrow keys to nothing
vim.cmd("noremap <Up> <NOP>")
vim.cmd("noremap <Down> <NOP>")
vim.cmd("noremap <Left> <NOP>")
vim.cmd("noremap <Right> <NOP>")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
local opts = {}


require("lazy").setup("plugins")

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>', {})

local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "javascript", "java"},
  highlight = { enable = true },
  indent = { enable = true }
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
