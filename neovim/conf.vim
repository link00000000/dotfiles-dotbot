" Character encoding
" May be required by some plugins
" This should already be set in neovim
set encoding=UTF-8

" Turn hybrid line numbers on
" Line number type changes depending on mode
" https://jeffkreeftmeijer.com/vim-number/
set number relativenumber

" Highlight current lne
set cursorline

" Enable mouse mode
set mouse=a

" Fix indentation of paste
set paste

" Always show signcolumns left of line numbers
set signcolumn=yes

" Share clipboard with windows using xsel
set clipboard=unnamed

" j/k will move virtual lines (lines that wrap)
" https://gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Indent using 4 spaces when pressing the tab key
" https://stackoverflow.com/a/1878983
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" Outdent current line with Shift + Tab
" https://stackoverflow.com/a/4766304
" gv is at the end of each macro to reselect the selection
" https://superuser.com/a/310424
nnoremap <S-Tab> <<gv
vnoremap <S-Tab> <gv
inoremap <S-Tab> <C-d>

" Indent current line with Tab
" gv is at the end of each macro to reselect the selection
" https://superuser.com/a/310424
nnoremap <Tab> >>gv
vnoremap <Tab> >gv

" Improved split pane navigation
" https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally#easier-split-navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
