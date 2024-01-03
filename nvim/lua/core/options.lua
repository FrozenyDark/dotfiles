local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.updatetime = 50

opt.backspace = "indent,eol,start"

opt.clipboard:append "unnamedplus"
opt.colorcolumn = "80"

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append "-"
