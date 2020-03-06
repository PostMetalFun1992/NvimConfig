function PythonSpecificSettings()
    setlocal colorcolumn=80
endfunction
autocmd FileType python call PythonSpecificSettings()

" Ale
let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_fixers = {'python': ['yapf', 'isort']}
nnoremap ff :ALEFix<CR>

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr> <C-Space>  deoplete#mappings#manual_complete()

" LanguageClient
let g:LanguageClient_serverCommands = {'python': ['/usr/local/bin/pyls']}

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

" NERDTree
let g:NERDTreeIgnore = [
 \ '\.pyc$', 
 \ '__pycache__', 
 \ '\.db$', 
 \ '\.mypy_cache$', 
 \ '\.pytest_cache$', 
 \ '\.git$',
 \ '\.sock$',
 \ '\.pid$',
 \ ]