return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufRead", "BufNewFile" },
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    indent = {
      char = "│",
      highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      },
    },
  },
  config = function(_, opts)
    local hooks = require("ibl.hooks")

    -- 하이라이트 그룹을 설정하는 훅을 등록합니다.
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
    end)

    -- ibl 설정을 적용합니다.
    require("ibl").setup(opts)
  end,
}
