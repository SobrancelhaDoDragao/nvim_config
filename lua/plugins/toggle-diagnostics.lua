return {
  "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
  config = function()
    require("toggle_lsp_diagnostics").init()

		vim.keymap.set("n", "<F9>", ":ToggleDiag <CR>", {})
  end,
}
