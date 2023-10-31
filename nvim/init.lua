require("base")

require("lazy-bootstrap")
require("lazy").setup({
    -- Colorschemes
    {
        "dustypomerleau/tol.nvim",
        lazy = false, -- load the colorscheme at startup
        priority = 1000, -- load colorscheme first
        config = true,
    },
    ---------------------------------------
    {
        "nvim-telescope/telescope.nvim", tag = '0.1.4',
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    { "mbbill/undotree" },
    { "lewis6991/gitsigns.nvim" },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: 
	                       -- See `# Preview Mode` for more information
        }
    },
    { "preservim/nerdcommenter" },
    -- LSP
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
    {"neovim/nvim-lspconfig"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/nvim-cmp"},
    {"L3MON4D3/LuaSnip"},
    ---------------------------------------
})


---------------------------------------


vim.cmd[[colorscheme tol]]
