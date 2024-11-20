return {
  {
    "mattn/emmet-vim",
    config = function()
      -- vim.g.user_emmet_leader_key = "<leader>t" -- Emmet 확장 단축키 설정 (Leader + t)
    end,
    keys = {
      { "<leader>t", desc = "Expand Emmet abbreviation" }, -- which-key에 설명 추가
    },
  },
  {
    "folke/which-key.nvim",
    config = function()
      local wk = require("which-key")
      wk.add({
        { "<leader>t", desc = "Expand Emmet abbreviation" }, -- which-key에 설명 추가
      })
    end,
  },
}
