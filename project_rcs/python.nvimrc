function PythonSpecificSettings()
    setlocal colorcolumn=80
endfunction
autocmd FileType python call PythonSpecificSettings()

" Ale
let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_fixers = {'python': ['yapf', 'isort']}
nnoremap ff :ALEFix<CR>

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
