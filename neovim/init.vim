source $HOME/.config/nvim/conf.vim

" Install plugins
call plug#begin(stdpath('data') . '/plugged')

source $HOME/.config/nvim/plugins/coc.vim

call plug#end()