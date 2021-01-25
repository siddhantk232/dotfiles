syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set incsearch
set hidden
set nohlsearch
set scrolloff=8
set signcolumn=yes

" https://github.com/morhetz/gruvbox/wiki/Terminal-specific#0-recommended-neovimvim-true-color-support
set termguicolors

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

colorscheme gruvbox
set background=dark

" respect .gitignore and always search from root
if executable('rg')
  let g:rg_derive_root='true'
endif

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let mapleader                 = " "
let g:netrw_browse_split      = 2
let g:netrw_banner            = 0
let g:netrw_winsize           = 25
let g:netrw_localrmdir        = 'rm -r'
let g:airline_powerline_fonts = 1
let g:javascript_plugin_jsdoc = 1

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" use peitalin/vim-jsx-typescript for typescriptreact
let g:vim_jsx_pretty_disable_tsx = 1

