""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My term does not support the 24bit color so i must add this part
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Set Colorshene"
let g:onedark_terminal_italics=1
colorscheme onedark
let g:airline_theme ='onedark'

set nocompatible              " be iMproved, required
filetype off                  " required

set number
set linebreak
set showbreak=+++
set textwidth=79    " 80 columns
set showmatch
set visualbell
set cursorline      " highlight current line

" Search settings
set hlsearch        " Enable search highlighting.
set ignorecase      " Ignore case when searching.
set incsearch       " Incremental search that shows partial matches.
set undolevels=1000
set history=1000

" Tab and indent settings
set expandtab       " Convert tabs to spaces.
set shiftwidth=4    " When shifting, indent using four spaces.
set shiftround      " When shifting lines, round the indentation to \
                    " the nearest multiple of “shiftwidth.”
set tabstop=4       " Indent using four spaces.
set autoindent      " New lines inherit the indentation of previous lines.
set smartindent
set smartcase       " Automatically switch search to case-sensitive
                    " when search query contains an uppercase letter.
set smarttab
set breakindent
set list listchars=trail:·,tab:⯈·,eol:↵
set ruler
set backspace=indent,eol,start

" Enhance completion
set wildmenu
set wildmode=longest:full,list:full

" Makefile
autocmd Filetype make setlocal noexpandtab

" Trailing whitespace removal
autocmd BufWritePre * %s/\s\+$//e

set encoding=UTF-8
syntax on
set showcmd          " Show commands when executed
set wrap
set laststatus=2
set cc=80
"set mouse=a
autocmd Filetype make setlocal noexpandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Run make silently, then skip the 'Press ENTER to continue'
noremap <leader>m :silent! :make! \| :redraw!<CR>

" C main shortcut
autocmd FileType c inoremap <buffer> main<CR> int main(int argc, char *argv[])<CR>{<CR><CR>}<up><TAB>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vundle plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here

" Theming
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/powerline-extra-symbols'
Plugin 'powerline/powerline-fonts'
Plugin 'ryanoasis/vim-devicons'
Plugin 'rakr/vim-one'
Plugin 'lilydjwg/colorizer'
Plugin 'sheerun/vim-polyglot'
" Snippets
Plugin 'vim-syntastic/syntastic'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Utils
Plugin 'raimondi/delimitmate'

" Mappings
Plugin 'romainl/vim-qf'

call vundle#end()
filetype plugin indent on
