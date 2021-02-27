call plug#begin('~/.vim/plugged')

" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'anott03/nvim-lspinstall'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mbbill/undotree'
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
Plug 'ryanoasis/vim-devicons'
Plug 'dag/vim-fish'
Plug 'godlygeek/tabular'

" tpope's territory
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

" fancy stuff
Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim' 
Plug 'vim-airline/vim-airline'
Plug 'mboughaba/i3config.vim'

"experiments (!temporary)
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install', }


call plug#end()

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

" respect .gitignore and always search from root
if executable('rg')
  let g:rg_derive_root='true'
endif

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let mapleader                 = " "
let g:airline_powerline_fonts = 1
let g:javascript_plugin_jsdoc = 1

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let g:chadtree_settings = { 'view': { 'open_direction': 'right' } }

" use peitalin/vim-jsx-typescript for typescriptreact
let g:vim_jsx_pretty_disable_tsx = 1

nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>u :UndotreeShow<CR>
" nnoremap <leader>e :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>e <cmd>CHADopen<cr>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nmap <Leader>p :PrettierAsync<CR>

" greatest remap ever
vnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#highlighting-for-large-files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" set filetypes as typescriptreact for syntax highlight
autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
