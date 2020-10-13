runtime! debian.vim

if has("syntax")
  syntax on
endif

" Gvimiä varten
colorscheme evening

" Kiva f5 compileri gnomelle
autocmd filetype cpp nnoremap <F5> :w <bar> !gnome-terminal -x bash -c "g++ -std=c++11 -O2 -Wall % -o %:h/a.out && %:h/a.out; exec bash" <CR>

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set autoindent

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set ts=2 sw=2
set relativenumber

" Kisakoodaus template
:autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

