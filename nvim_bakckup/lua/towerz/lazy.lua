
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

require("lazy").setup ({

    {"nvim-telescope/telescope.nvim",
    dependencies = {'nvim-lua/plenary.nvim'}} ,
    {'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },

    "folke/trouble.nvim",
    config = function()
        require("trouble").setup {
            icons = false,
        }
    end,


    "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", 
    "nvim-treesitter/playground",
    "ThePrimeagen/harpoon",
    "theprimeagen/refactoring.nvim",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "nvim-treesitter/nvim-treesitter-context",

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    ("folke/zen-mode.nvim"),
    ("github/copilot.vim"),
    ("eandrju/cellular-automaton.nvim"),
    ("laytan/cloak.nvim"),
    ("tomasiser/vim-code-dark")
})
