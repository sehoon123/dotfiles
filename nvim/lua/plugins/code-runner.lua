return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      mode = "float",
      filetype = {
        javascript = function()
          local filename = vim.fn.expand("%:t") -- 현재 파일명 가져오기
          if filename == "app.js" then
            return "npm start" -- app.js는 npm start로 실행
          else
            return "node $dir/$fileName" -- 그 외 javascript 파일은 node로 실행
          end
        end,
        python = "python3 -u $dir/$fileName",
        go = "go run $dir/$fileName",
      },
    },
    keys = {
      {
        "<leader>r",
        function()
          if vim.bo.filetype == "markdown" then
            vim.cmd("MarkdownPreviewToggle")
          else
            vim.cmd("RunCode")
          end
        end,
        desc = "Run code or Markdown preview",
      },
    },
  },
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.bottom = vim.list_extend(opts.bottom or {}, {
        { title = "CodeRunner", ft = "crunner", size = { height = 0.25 } },
      })
    end,
  },
}
