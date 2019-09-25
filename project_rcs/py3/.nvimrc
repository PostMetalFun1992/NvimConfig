function PythonSpecificSettings()
    setlocal colorcolumn=80
endfunction
autocmd FileType python call PythonSpecificSettings()

" LanguageClient
let g:LanguageClient_serverCommands = {
    \ 'python': ['/usr/local/bin/pyls'],
    \ }

let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = './settings.json'

" NERDTree
let g:NERDTreeIgnore = [
 \ '\.pyc$', 
 \ '__pycache__', 
 \ '\.db$', 
 \ '\.mypy_cache$', 
 \ '\.pytest_cache$', 
 \ '\.git$'
 \ ]
