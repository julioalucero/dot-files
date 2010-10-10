filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible

if has('autocmd')
  filetype plugin indent on

  autocmd FileType text setlocal textwidth=78
  autocmd BufNewFile,BufRead Gemfile,Thorfile,*.ru setfiletype ruby
endif

set number
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set hidden
set directory=~/tmp,/tmp,.
set shortmess=aI
set laststatus=2
set list listchars=tab:»·,trail:·
set wildmode=list:longest,list:full
set nowrap
set sidescroll=1
set listchars+=extends:»
set showcmd
