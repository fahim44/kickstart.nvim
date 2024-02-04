-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

	-- -- file browser
	-- {
	-- 	"nvim-telescope/telescope-file-browser.nvim",
	-- 	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" }
	-- },

	-- telescope integration with nvim-dap
	{
		'nvim-telescope/telescope-dap.nvim',
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-treesitter/nvim-treesitter", "mfussenegger/nvim-dap" },
	},

	-- termninal
	{
		'vimlab/split-term.vim',
	},

	-- auto-close brackets
	-- {
	-- 	'm4xshen/autoclose.nvim',
	-- 	config = true,
	-- },

	-- buffer line
	{ 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons', config = true },

	-- buffers as tab
	{ "tiagovla/scope.nvim",     config = true },

	-- harpoon
	{
		"ThePrimeagen/harpoon",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

}
