-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 기본 옵션 설정
vim.opt.list = true
vim.opt.winbar = "%=%m %f"
vim.opt.wrap = true
vim.g.lazyvim_prettier_needs_config = false

-- Indentation settings
-- vim.opt.tabstop = 4 -- 실제 탭 너비
-- vim.opt.shiftwidth = 4 -- 자동 들여쓰기를 위한 스페이스 수
-- vim.opt.expandtab = true -- 탭 대신 스페이스를 사용
-- vim.opt.softtabstop = 4 -- 탭을 누를 때 사용되는 스페이스 수

-- Emmet 확장 단축키 설정
vim.g.user_emmet_leader_key = "<leader>t"

-- 스크롤링 속도 개선
vim.opt.scrolloff = 10 -- 커서 주변에 최소 5줄의 여유 공간을 유지하며 스크롤
vim.opt.sidescrolloff = 10 -- 가로 스크롤 시 여유 공간 유지
vim.opt.updatetime = 100 -- 화면 갱신 간격을 100ms로 설정하여 반응 속도 개선
vim.opt.ttimeoutlen = 5 -- j/k 반복 속도를 빠르게 설정
vim.opt.timeoutlen = 300 -- jk 키 조합의 반응 속도를 300ms로 설정

-- IndentBlankline 색상 설정 (이미 사용 중이므로 유지)
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])
