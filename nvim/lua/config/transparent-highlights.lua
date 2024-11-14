local M = {}

-- 모든 하이라이트 그룹의 배경을 NONE으로 설정하고, CursorLine에 밑줄 추가
function M.set_all_highlights_bg_none()
  -- 모든 하이라이트 그룹을 가져와 순회
  for _, group in ipairs(vim.fn.getcompletion("", "highlight")) do
    -- Search와 Visual 그룹을 건너뛰도록 조건 추가
    if group ~= "Search" and group ~= "Visual" then
      local highlight = vim.api.nvim_get_hl_by_name(group, true)
      -- bg 값이 설정되어 있는 경우에만 bg = NONE으로 설정
      vim.api.nvim_set_hl(0, group, {
        fg = highlight.foreground and string.format("#%06x", highlight.foreground),
        bg = highlight.background and "NONE",
        ctermbg = "NONE",
        blend = highlight.blend or 0,
      })
    end
  end

  -- CursorLine에 투명한 배경과 밑줄 추가
  vim.api.nvim_set_hl(0, "CursorLine", {
    bg = "NONE",
    underline = true,
  })

  -- Search 하이라이트가 우선 적용되도록 설정
  vim.api.nvim_set_hl(0, "Search", {
    bg = "#FFD700", -- 원하는 색상으로 설정
    fg = "#000000", -- 원하는 색상으로 설정
    blend = 0, -- Search 하이라이트가 완전히 표시되도록 blend 제거
  })
end

-- 초기 설정 적용
M.set_all_highlights_bg_none()

-- 버퍼가 열릴 때마다 투명도 설정을 다시 적용
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = M.set_all_highlights_bg_none,
})

return M
