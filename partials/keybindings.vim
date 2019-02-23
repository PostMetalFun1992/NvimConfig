"=========================================
" Keybindings
"=========================================

set backspace=indent,eol,start

nnoremap <C-x> :q<CR>
nnoremap <C-s> :w<CR>

nnoremap tt :tabnew<CR>
nnoremap ff :ALEFix<CR>
nnoremap t, :tabprevious<CR>
nnoremap t. :tabnext<CR>

nmap <C-n> :TagbarToggle<CR>
nmap <C-t> :NERDTreeToggle<CR>

noremap <C-h> :set hlsearch! hlsearch?<CR>

inoremap <expr> <C-Space>  deoplete#mappings#manual_complete()
