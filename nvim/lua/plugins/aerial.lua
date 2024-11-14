return {
  {
    "stevearc/aerial.nvim",
    opts = {
      layout = {
        default_direction = "right", -- 항상 오른쪽에 열리도록 설정
        max_width = { 40 }, -- 최대 너비를 40으로 설정
        min_width = 20, -- 최소 너비를 20으로 설정
      },
      open_automatic = true, -- 자동으로 열리도록 설정
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("aerial").setup()
      vim.keymap.set("n", "<leader>uA", function()
        vim.cmd("AerialToggle")
      end, { desc = "Toggle Aerial" })
    end,
  },
}
