let g:NERDTreeIgnore = ['.git', '\.pyc$', '__pycache__', '\.db$', '\.mypy_cache$']

let g:ale_linters.python = ['pyls']
let g:ale_fixers.python = ['yapf']

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
