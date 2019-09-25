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

inoremap <expr> <C-Space>  deoplete#mappings#manual_complete()

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>

nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> ff :call LanguageClient#textDocument_formatting()<CR>
