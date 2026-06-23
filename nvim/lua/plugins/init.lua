return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "cpp", "c"
  		},
  	},
  },

  {
    "stevearc/aerial.nvim",
    opts = {
      backends = { "lsp", "treesitter", "markdown", "man" },
      layout = {
        default_direction = "right",
        min_width = 25,
      },
      show_guides = true,
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>ro", "<cmd>AerialToggle!<cr>", desc = "Toggle Aerial" },
    },
  }
}
