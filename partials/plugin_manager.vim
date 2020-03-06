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

" Colorschemes
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'aonemd/kuroi.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Code naviagion
Plug 'scrooloose/nerdtree'

" Text manupulation
Plug 'jiangmiao/auto-pairs'

" Autocomplete / Linting
Plug 'w0rp/ale'
Plug 'junegunn/fzf'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'tag': '5.0' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" JSON
Plug 'elzr/vim-json'

" JS
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()
