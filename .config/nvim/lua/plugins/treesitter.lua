return {
		'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
		opts = {
      ensure_installed = {
      'yaml',
      'typescript',
      'bash',
      'diff',
      'html',
      'css',
      'svelte',
      'lua',
      'luadoc',
      'markdown',
      'rust',
      'markdown_inline',
      'terraform',
    },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
}
