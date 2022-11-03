local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use "nvim-lua/plenary.nvim"     -- Useful lua functions used by lots of plugins

  use "windwp/nvim-autopairs"

  use "onsails/lspkind-nvim"

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end
  }


  use { 
    "RRethy/nvim-base16",
    config = function()
      --vim.cmd([[colorscheme base16-gruvbox-dark-soft]])     
      vim.cmd([[colorscheme base16-gruvbox-material-dark-soft]])     
      --vim.cmd([[colorscheme base16-monokai]])     
    end
  }

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('lualine').setup()
    end
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'       -- optional, for file icons
    },
    config = function()
      require('xavier/plugins/nvim-tree')
    end
  }

  -- cmp plugins
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      { "L3MON4D3/LuaSnip",},
      { "hrsh7th/cmp-buffer",      },
      { "hrsh7th/cmp-path",        },
      { "hrsh7th/cmp-nvim-lsp",    },
      { "hrsh7th/cmp-nvim-lua",    },
      { "saadparwaiz1/cmp_luasnip",},
      { "rafamadriz/friendly-snippets",},
    },
    config = function()
      require("xavier/plugins/cmp")
    end
  }

  -- CoC (Conquer of Completion). Code auto-complete
  -- use { 'neoclide/coc.nvim', branch = 'release'}
    
  -- Treesitter
	use "nvim-treesitter/nvim-treesitter"

	-- Git
	use "lewis6991/gitsigns.nvim"

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

