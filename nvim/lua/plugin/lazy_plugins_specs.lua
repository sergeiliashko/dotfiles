return {

    -- Colorscheme
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme('catppuccin')
        end,
    },

    -- LSP config
    {
        'neovim/nvim-lspconfig',
        config = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(event)
                    vim.keymap.set( "n", "gd", vim.lsp.buf.definition,
                        {
                            buffer = event.buf,
                            desc = "Go to definition",
                        }
                    )
                end,
            })
        end,

    },


    -- Mason
    {
        'mason-org/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },

    -- Mason2lsp (brings auto lsp eanblers)
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = {
                "gopls",
                "lua_ls",
            },
        },
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'rafamadriz/friendly-snippets',
        },
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

    -- Git
    {
        'tpope/vim-fugitive',
    },

    -- Undo tree
    {
        'mbbill/undotree',
    },

    -- Harpoon
    {
        'ThePrimeagen/harpoon',
    },

    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = "Find files",
            },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").live_grep()
                end,
                desc = "Live grep",
            },
            {
                "<leader>fb",
                function()
                    require("telescope.builtin").buffers()
                end,
                desc = "Buffers",
            },
            {
                "<leader>fh",
                function()
                    require("telescope.builtin").help_tags()
                end,
                desc = "Help tags",
            },
        },
    },
}
