"=========================================
" Keybindings
"=========================================

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop> 

set backspace=indent,eol,start

nnoremap <C-x> :q<CR>
nnoremap <C-s> :w<CR>

nnoremap tt :tabnew<CR>
nnoremap t, :tabprevious<CR>
nnoremap t. :tabnext<CR>

nmap <C-n> :TagbarToggle<CR>
nmap <C-t> :NERDTreeTabsToggle<CR>

noremap <C-h> :set hlsearch! hlsearch?<CR>
