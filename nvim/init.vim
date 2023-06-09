" Load lua module for key mappings
:source ~/.config/nvim/lua/myluamodule.lua

" Plugins

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/preservim/nerdtree' ", {'on': 'NERDTreeToggle'}
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' " Airline Themes
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/RRethy/nvim-base16' " Base16 Color Schemes
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/preservim/tagbar', {'on': 'TagbarToggle'} " Tagbar for code navigation
Plug 'https://github.com/dkarter/bullets.vim'
Plug 'https://github.com/junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'https://github.com/mbbill/undotree'
Plug 'https://github.com/numirias/semshi'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'phanviet/vim-monokai-pro'

" Plug 'neovim/nvim-lspconfig'
" Plug 'SmiteshP/nvim-navic'

" Plug 'fgheng/winbar.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" Plug 'https://github.com/glepnir/dashboard-nvim'

call plug#end()


au BufRead * set number relativenumber

:set number
:set relativenumber
:set mouse=a
:set autoindent
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set smarttab
:set encoding=utf-8
:set fileencoding=utf-8
:set termencoding=utf-8

" colorscheme onedark
" let g:airline_theme='onedark'

colorscheme monokai_pro
let g:airline_theme='base16_monokai'

" AIRLINE CONFIG

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:bullets_enabled_file_types = [
	\ 'markdown',
	\ 'text'
	\]

let g:dashboard_default_executive = 'fzf'
nnoremap <silent> <C-f> :BLines<CR>

" NERDTree config
let g:NERDTreeShowHidden = 1
nnoremap <silent> <F6> :NERDTreeToggle<CR>

" Navigate in visual linewraps
noremap j gj
noremap k gk
noremap <UP> gk
noremap <DOWN> gj

" fold config
set foldmethod=indent
set foldlevel=1

