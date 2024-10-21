local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "rust-analyzer",
        "codelldb",
        "pyright",
        "mypy",
        "ruff",
        "black",
        "haskell-language-server",
        "hlint",
        "fourmolu"
      }
    }
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
   'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      require('nvim-treesitter.configs').setup({
        ensure_installed = 'all',
        ignore_install = { 'org' },
      })
    end,
  }
}
return plugins
