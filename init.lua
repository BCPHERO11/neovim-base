
require('config.lsp')

local vim = vim
local Plug = vim.fn['plug#']

--area para adicionar as extensoes
vim.call('plug#begin')

	--Telescope
	Plug('nvim-lua/plenary.nvim')
	Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

	--Tema do terminal
	Plug('folke/tokyonight.nvim')
	Plug('tomasr/molokai')

	--treesitter (verifica os itens a fim de colorir)
	Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

	--harpoon
	Plug('nvim-lua/plenary.nvim')
	Plug('ThePrimeagen/harpoon')

	--UndoTree
	Plug('mbbill/undotree')

	--Fugitive.vim
	Plug('tpope/vim-fugitive')

	--Jogo pra treinar VimMotions
	Plug('ThePrimeagen/vim-be-good')

	--LSPs
	
vim.call('plug#end')

--configurando o plano de fundo
vim.cmd.colorscheme("molokai")
--vim.cmd.colorscheme("tokyonight-moon")

--Configurando os LSPs

-- Configuracoes de ambiente
vim.g.mapleader = " "

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.winborder = 'rounded'

-- Remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Comando para sair do arquivo
