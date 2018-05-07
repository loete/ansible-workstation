set nocompatible
filetype plugin indent on
set t_Co=256
syntax enable

" line numbering
set number relativenumber
augroup numbertoogle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" tabsettings
set tabstop=2 
set softtabstop=0 
set shiftwidth=2
set shiftround
set autoindent
set smarttab 
set expandtab
set nowrap
