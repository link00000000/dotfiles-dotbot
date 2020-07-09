" TODO:
" - Fix CoC warnings
" - Airline
" - Debugger

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

" Plugins
call plug#begin()

" Autocompletion and code tips
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-prettier',
    \ 'coc-json',
    \ 'coc-clangd',
    \ 'coc-cmake',
    \ 'coc-css',
    \ 'coc-emmet',
    \ 'coc-html',
    \ 'coc-markdownlint',
    \ 'coc-python',
    \ 'coc-spell-checker',
    \ 'coc-vetur',
    \ 'coc-xml',
    \ 'coc-yaml'
    \ ]

" Use <c-space> to trigger autocompletion windows
" https://gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f
inoremap <silent><expr> <c-space> coc#refresh()

" Base 16 colorscheme
set background=dark
let base16colorspace=256
set termguicolors

Plug 'chriskempson/base16-vim'
autocmd vimenter * colorscheme base16-solarflare

" Uncomment the line below to make the background transparent
" autocmd vimenter * highlight Normal ctermbg=NONE guibg=NONE

" NERDtree file tree
Plug 'scrooloose/nerdtree'

" Map control-n to NERDTree toggle
inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" Replace NERDTree directory icons with Nerd Font glyphs
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" Automatically close vim if NERDTree is the only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree Git integration
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " nerdtree-sytnax-highlight plugin currently broken
    " https://github.com/tiagofumo/vim-nerdtree-syntax-highlight/issues/37
"let g:NERDTreeGitStatusWithFlags = 1
"let g:NERDTreeIgnore = ['^node_modules$']

" Fuzzy file search Ctrl-P
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Toggleable line comments
" Comments toggled with with control + 2x /
Plug 'tomtom/tcomment_vim'
vmap <C-/> :TComment<CR> 

" File Icons
" Must be loaded after all other plugins that depend on it
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

