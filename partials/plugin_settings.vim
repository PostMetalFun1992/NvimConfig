"=========================================
" Plugin Settings
"=========================================

" Gruvbox
colorscheme jellybeans
let g:airline_theme = 'jellybeans'

" ALE
let g:ale_linters = {
    \ 'python': ['flake8', 'mypy'],
    \ 'javascript': ['eslint'],
    \ 'haskell': ['hlint']
\ }

let g:ale_fixers = {
    \ 'python': ['yapf'],
    \ 'haskell': ['stylish-haskell']
\ }

" hiPairs
let g:hiPairs_enable_matchParen = 0

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

" vim-json
let g:vim_json_syntax_conceal = 0

" NERDTree
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" vim-lsp
let g:lsp_diagnostics_enabled = 0

" Deoplete
let g:python3_host_prog = "/usr/bin/python3"
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1

" auto - close preview
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" press tab for scroll through completetions list
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" disable autocompletion for comments and strings
call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])
call deoplete#custom#option('ignore_sources', {'_': ['buffer', 'around']})

" deoplete-vim lsp
if (executable('pyls'))
    let s:pyls_path = fnamemodify(g:python3_host_prog, ':h') . '/'. 'pyls'
    augroup LspPython
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'pyls',
      \ 'cmd': {server_info->['pyls']},
      \ 'whitelist': ['python']
      \ })
    augroup END
endif
