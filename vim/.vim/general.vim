" should potentially split this file more logically

set tabstop=4
set number
set relativenumber
set shiftwidth=4
set et
set t_Co=256
set cursorline
set list
set noswapfile
set ignorecase
set smartcase

" scss specific settings to avoid slowdowns
autocmd Filetype scss setlocal norelativenumber nocursorline

map - "+y
map _ "+p
vnoremap = "*y
map + "*p
nnoremap Z :w!<CR>
nnoremap X :wq<CR>
imap <M-[> <Esc>
imap <M-;> <Esc>
" imap <M-p> <C-p>  -- not working

" allow toggling between local and default mode
function TabToggle()
  if &expandtab
    set noexpandtab
  else
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z

" remove all whitespace
nnoremap <silent> <F8> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

colorscheme railscasts
"colorscheme Sunburst

" unmap <C-S>
" imap <C-S> <C-W><C-L>
" nmap <C-j> <C-y>
" nmap <C-k> <C-e>

" au FilterWritePre * if &diff | colorscheme kalisi | endif
" au FilterWritePre * if &diff | colorscheme Sunburst | endif

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
vnoremap // y/<C-R>"<CR>
" nnoremap <C-]> <A-]>

syntax on
filetype plugin indent on

noremap <silent> <F4> :let @+=expand("%:p")<CR>
nmap ,cl :let @+=expand("%:p")<CR>

" When modifying files, update them instead of overwriting. Only use this so
" that the crome debugger recognizes files updates
set backupcopy=yes

set tags=./tags;~/insight
