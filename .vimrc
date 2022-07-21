
" Setup for Vundle
set nocompatible
filetype off
set rtp+=/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins 
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'hashivim/vim-terraform'
Plugin 'godlygeek/tabular'
Plugin 'vimwiki/vimwiki'
Plugin 'ap/vim-css-color'

call vundle#end()            " required
filetype plugin indent on    " required
" End Setup for Vundle


" Vim settings
set number
set relativenumber
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set spell spelllang=en_us
set autochdir
set background=dark

hi clear SpellBad
hi SpellBad cterm=undercurl,bold guisp=red

hi clear SpellLocal
hi SpellLocal cterm=undercurl,bold guisp=yellow 


" Nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Vimwiki use markdown syntax
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]



