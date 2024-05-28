vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "<Leader>w", ":w<CR>")
keymap.set("n", "<Leader>q", ":q<CR>")
keymap.set("n", "<Leader>x", ":x<CR>")
keymap.set("n", "<Leader>e", "::NvimTreeToggle<CR>")
keymap.set("n", "<Leader>n", ":nohl<CR>")
keymap.set("n", "<Leader>[", "<C-o>") -- 回退上次位置
keymap.set("n", "<Leader>]", "<C-i>") -- 跳回更新位置
-- 可视行移动
keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
keymap.set("n", "<C-h>", ":bprevious<CR>")
keymap.set("n", "<C-l>", ":bnext<CR>")
keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<Leader>lg", ":Telescope live_grep<CR>")
keymap.set("n", "<Leader>rs", ":Telescope resume<CR>")
keymap.set("n", "<Leader>of", ":Telescope oldfiles<CR>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
