local function ensurePacker()
	local fn = vim.fn
	local installPath = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

	if fn.empty(fn.glob(installPath)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', installPath})
		vim.cmd [[packadd packer.nvim]]

		return true
	end

	return false
end

local packerBootstrap = ensurePacker()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'shaunsingh/nord.nvim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	if packerBootstrap then
		require('packer').sync()
	end
end)
