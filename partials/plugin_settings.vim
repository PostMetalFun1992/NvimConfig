"=========================================
" Plugin Settings
"=========================================

set background=dark
colorscheme gruvbox
let g:airline_theme = 'gruvbox'

" hiPairs
let g:hiPairs_enable_matchParen = 0

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

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

" Ale
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_linters_explicit = 1
let g:ale_linters = {}
let g:ale_fixers = {}

" LanguageClient
let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_useVirtualText = 0

" Deoplete
let g:deoplete#enable_at_startup = 0
let g:deoplete#disable_auto_complete = 1

" auto - close preview
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" press tab for scroll through completetions list
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" disable autocompletion for comments and strings
call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])
call deoplete#custom#option('ignore_sources', {'_': ['buffer', 'around']})
