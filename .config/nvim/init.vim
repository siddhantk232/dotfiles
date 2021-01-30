call plug#begin('~/.vim/plugged')

" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" coc stuff (temporary)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax additions
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
Plug 'vim-airline/vim-airline'

call plug#end()

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

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

nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>e :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <C-p> :GFiles<CR>

" coc stuff TEMPORARY!
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <space>e :CocCommand explorer --position right<CR>

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" END coc stuff

" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#highlighting-for-large-files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" set filetypes as typescriptreact for syntax highlight
autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
