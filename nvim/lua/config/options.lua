-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 기본 옵션 설정
vim.opt.list = true
vim.opt.winbar = "%=%m %f"
vim.opt.wrap = true
vim.g.lazyvim_prettier_needs_config = false
vim.g.user_emmet_leader_key = "<leader>t"

-- IndentBlankline 색상 설정 (이미 사용 중이므로 유지)
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])
