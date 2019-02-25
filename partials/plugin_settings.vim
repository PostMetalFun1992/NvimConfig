"=========================================
" Plugin Settings
"=========================================

" Gruvbox
colorscheme gruvbox
let g:airline_theme = 'gruvbox'


" ALE
let g:ale_linters = {
    \ 'python': ['flake8'],
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
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let NERDTreeShowHidden = 1


" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1

" auto - close preview
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" press tab for scroll through completetions list
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" disable autocompletion for comments and strings
call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])

call deoplete#custom#option('ignore_sources', {'_': ['buffer', 'around']})


" deoplete-jedi
let g:deoplete#sources#jedi#enable_typeinfo = 1


" deoplete-tern
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#filetypes = [
	\ 'jsx',
	\ 'javascript.jsx',
	\ 'javascript'
	\ ]
