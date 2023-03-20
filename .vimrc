set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Provide correct syntax highlighting and indentation
Plugin 'sheerun/vim-polyglot'

" Provide colorschemes
Plugin 'rafi/awesome-vim-colorschemes'

" Provide automatic pair completion
"Plugin 'jiangmiao/auto-pairs'

" Provide powerful borwsing the filesystem
Plugin 'preservim/nerdtree'

" Provide browsing the tags
Plugin 'preservim/tagbar'

" Provide c and c++ type complete
Plugin 'xavierd/clang_complete'
Plugin 'lifepillar/vim-mucomplete'

call vundle#end()
filetype plugin indent on

" ------ Vim Settings ------
set nu          " Enable line numbers
syntax on      " Enalbe syntax highlighting
set termguicolors

" How many columns of whitespace a \t is worth
set tabstop=4

" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4

" Use spaces when tabbing
set expandtab

set incsearch   " Enable incremental search
set hlsearch    " Enable highlight search

"set termwinsize=12x0    " Set terminal size
set splitbelow          " Always split below
set mouse=a             " Enable mouse drag on window splits

set background=dark     " dark or light

colorscheme deep-space     " default colorschemr


let g:AutoPairsMapCR = 0

" ------ NERDTree Settings ------
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeMinimalMenu = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 31

nmap <F2> :NERDTreeToggle<CR>


" ------ Tagbar Settings ------
let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'

nmap<F8> :TagbarToggle<CR>


" ------ Clang_complete Settings ------
set noinfercase
set completeopt-=preview
set completeopt+=menuone,noselect
let g:clang_library_path = '/usr/lib64/llvm'
let g:clang_complete_auto = 1
let g:mucomplete#enable_auto_at_startup = 1

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

cs add ~/work/gem5/cscope.out
set tags=~/work/gem5/tags

set relativenumber
execute "highlight Pmenu ctermfg=gray guifg=gray"
execute "highlight Comment guifg=#008700"
execute "highlight linenr guifg=white"

set foldmethod=indent       " automatically fold by indent level
set nofoldenable            " ... but have folds open by default
