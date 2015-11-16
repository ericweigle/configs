" don't be like vi.
:set nocompatible
" show syntax highlighting.
:syntax on
" Map save/quit for gui
:map <C-s> :w<CR>
:map <C-q> :q<CR>
:map <C-n> :n<CR>
" Map control K to paragraph formatting
:map <C-K> 0v}k$J0:.!fmt -80 -t<CR>
:map <C-J> gqap

" Map f to turning off match highlighting
" Map c to f, like the 'clear' syntax of a shell
":map f /__$\/DONT_TYPE_ME\/$__<CR>
:map f :let @/ = ""<CR>
:map c :w<CR>:!make<CR>
" Set the font for gvim to this one
:set guifont=-Adobe-Courier-Medium-R-Normal--14-140-75-75-M-90-ISO8859-1
" Last window always has a status line
:set laststatus=2
" Tab stop at 4 spaces
:set tabstop=2
" > operator same as tabstop
:set shiftwidth=2
" Status line is Filename (Column, Line) percent in file% HelpFlagReadonlyFlagModifiedFlag
:set statusline=%f\ (%c,%l)\ %p%%\ %h%r%m
" Turn on highlighted search
:set hlsearch
" Don't make all windows the same size when splitting
:set noequalalways
" Show matching {([])} when terminating one entered.
:set showmatch
" Turn off beeping in favor of screen flash
:set visualbell
" Turn on incremental searching.
:set incsearch
" Screw with colors in xterms
:hi Statement ctermfg=5
" Turn on file type intelligence
:filetype on

" don't use tabs; use spaces
:set expandtab
:set ai

" Don't force wrap on text files. It's annoying.
:autocmd BufReadPost *.txt set tw=0

" Override some stupid default behavior
:autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost * 1go
