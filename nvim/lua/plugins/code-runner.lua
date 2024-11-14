return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      mode = "float",
      filetype = {
        javascript = "node $dir/$fileName",
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
