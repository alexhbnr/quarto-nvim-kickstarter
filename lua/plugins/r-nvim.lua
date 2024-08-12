return {
  {
    'R-nvim/R.nvim',
    config = function ()
        vim.api.nvim_buf_set_keymap(0, "n", "<Enter>", "<Plug>RDSendLine", {})
        vim.api.nvim_buf_set_keymap(0, "v", "<Enter>", "<Plug>RSendSelection", {})
        local opts = {
            disable_cmds = {
                 "RClearConsole",
                 "RCustomStart",
                 "RSPlot",
                 "RSaveClose",
                },
            rconsole_width = 10,
            rconsole_height = 24,
            min_editor_width = 60,
        }
        require("r").setup(opts)
    end,
    lazy = false,
  },
  {
    'R-nvim/cmp-r',
  },
  {
    "hrsh7th/nvim-cmp",
     config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {{ name = "cmp_r" }},
        mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
          -- During auto-completion, press <Tab> to select the next item.
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
            elseif has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
      })
      require("cmp_r").setup({ })
    end,
  }
}
