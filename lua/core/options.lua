local opt = vim.opt

-- line number
-- opt.relativenumber = true
opt.number = true

opt.encoding = "UTF-8"
opt.fileencoding = "UTF-8"

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.mouse:append("a")

-- 
opt.cursorline = true

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

--opt.colorcolumn = "110"

-- 垂直滚动时,光标距离地步的行数.
opt.scrolloff=11

opt.showmode = false
