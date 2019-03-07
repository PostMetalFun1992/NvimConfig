"=========================================
" Plugin Manager
"=========================================

" Auto Vim-plug install
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

" UI Tweaks
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/hiPairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Code naviagion
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'

" Text manupulation
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Autocomplete | Linting | IDE features
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'

Plug 'w0rp/ale'

" Markdown
Plug 'plasticboy/vim-markdown'

" JSON
Plug 'elzr/vim-json'

" JS
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()
