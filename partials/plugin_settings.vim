"=========================================
" Plugin Settings
"=========================================

set background=dark
colorscheme jellybeans
let g:airline_theme = 'jellybeans'

" hiPairs
let g:hiPairs_enable_matchParen = 0

" vim-json
let g:vim_json_syntax_conceal = 0

" NERDTree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd StdinReadPre * let s:std_in=1

" Airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch']

" Ale
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_linters_explicit = 1
let g:ale_linters = {}
let g:ale_fixers = {}

" Polyglot
let g:polyglot_disabled = ['markdown']

" Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
    \ 'separately': {
        \ 'nerdtree': 0,
    \ }
\}

" Coc.nvim
" Tab for triggering completion
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" CTRL + Space for triggering completion
inoremap <silent><expr> <c-space> coc#refresh()
