return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("harpoon").setup({})

    vim.keymap.set("n", "<leader>a", function()
      require("harpoon.mark").add_file()
      print("File added to harpoon")
    end, { desc = "Harpoon add file" })

    vim.keymap.set("n", "<C-H>", function()
      require("harpoon.ui").toggle_quick_menu()
    end, { desc = "Harpoon menu" })

    vim.keymap.set("n", "<leader>1", function()
      require("harpoon.ui").nav_file(1)
    end, { desc = "Harpoon file 1" })

    vim.keymap.set("n", "<leader>2", function()
      require("harpoon.ui").nav_file(2)
    end, { desc = "Harpoon file 2" })

    vim.keymap.set("n", "<leader>3", function()
      require("harpoon.ui").nav_file(3)
    end, { desc = "Harpoon file 3" })

    vim.keymap.set("n", "<leader>4", function()
      require("harpoon.ui").nav_file(4)
    end, { desc = "Harpoon file 4" })
  end,
}
