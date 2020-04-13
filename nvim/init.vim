filetype plugin on
set path+=**
set list
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set scrolloff=1
set sidescrolloff=5
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set wildmode=list:longest,full

" trim whitespace
fun! TrimWhiteSpace()
  let l:save=winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

nnoremap <Leader>t :call TrimWhiteSpace()<CR>
