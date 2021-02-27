nnoremap <leader>ld :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>li :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>lsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>lrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>lrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>lca :lua vim.lsp.buf.code_action()<CR>

" K to open man docs and k for lsp!
nnoremap <leader>k :lua vim.lsp.buf.hover()<CR>

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.gopls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.bashls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.cssls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.graphql.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.html.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }

