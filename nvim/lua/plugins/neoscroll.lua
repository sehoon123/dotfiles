return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({
      hide_cursor = false, -- 스크롤 중 커서 숨기기
      mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>" }, -- 기본 스크롤 단축키
      performance_mode = true, -- 성능 모드 활성화 (속도 향상)
      easing_function = "sine", -- 스크롤 애니메이션의 easing 함수 설정 (부드러운 애니메이션)
    })
  end,
}
