return {
  "jalvesaq/Nvim-R",
  name = "nvim-r",
  enabled = true,
  lazy = false,
  init = function()
    vim.g.R_openpdf = 1
    vim.g.R_clear_console = 0
    vim.g.R_rconsole_width = 0
    vim.cmd([[
      " your Nvim-R configuration goes here, e.g:
      let R_hl_term = 0
      let R_bracketed_paste = 1
      let R_assign = 0
      let maplocalleader = "\\"

      map <silent> \xh :call RAction("head")<CR>
      map <silent> \xo :call RAction("class")<CR>
    ]])
  end,
}
