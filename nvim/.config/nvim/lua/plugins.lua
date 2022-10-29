local setup = function(name, config)
  require(name).setup(config)
end

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- LSP
  use {
    'williamboman/mason.nvim',
    config = setup('mason')
  }
  use {
    'williamboman/mason-lspconfig.nvim',
    config = setup('mason-lspconfig', {
      automatic_installation = true
    })
  }
  use 'neovim/nvim-lspconfig'
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga = require("lspsaga")

        saga.init_lsp_saga({
            -- your configuration
        })
    end,
})

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    config = setup('nvim-treesitter.configs', {
      highlight = {
        enabled = true
      }
    })
  }
  use 'mfussenegger/nvim-dap'
  use 'nvim-treesitter/nvim-treesitter-context'
  use {
    'numToStr/Comment.nvim',
    config = setup('Comment')
  }
  use {
    "windwp/nvim-autopairs",
    config = setup("nvim-autopairs")
  }

  -- cmp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
  use 'saadparwaiz1/cmp_luasnip'

  -- git
  use 'sindrets/diffview.nvim'
  use {
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'
    },
    config = setup('neogit', {
      integrations = {
        diffview = true
      }
    })
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = setup('gitsigns')
  }
  use {
    'dinhhuy258/git.nvim',
    config = setup('git', {
      default_mappings = true, -- NOTE: `quit_blame` and `blame_commit` are still merged to the keymaps even if `default_mappings = false`

      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Close blame window
        quit_blame = "q",
        -- Open blame commit
        blame_commit = "<CR>",
        -- Open file/folder in git repository
        browse = "<Leader>go",
        -- Open pull request of the current branch
        open_pull_request = "<Leader>gp",
        -- Create a pull request with the target branch is set in the `target_branch` option
        create_pull_request = "<Leader>gn",
        -- Opens a new diff that compares against the current index
        diff = "<Leader>gd",
        -- Close git diff
        diff_close = "<Leader>gD",
        -- Revert to the specific commit
        revert = "<Leader>gr",
        -- Revert the current file to the specific commit
        revert_file = "<Leader>gR",
      },
      -- Default target branch when create a pull request
      target_branch = "master",
    })
  }

  use 'ThePrimeagen/harpoon'
  use {
    'olivercederborg/poimandres.nvim',
    config = setup('poimandres')
  }


  -- Prettier & Eslint
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'MunifTanjim/eslint.nvim'


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
