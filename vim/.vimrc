set tabstop=4
set number
set relativenumber
set shiftwidth=4
set et
map - "+y
map _ "+p
vnoremap = "*y
map + "*p
set t_Co=256
set cursorline
set list
set noswapfile

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
"nnoremap <S-f> <C-f>  " S-f is used for reverse searching
"nnoremap <S-b> <C-b>
nnoremap <C-]> <A-]>
" nnoremap zt zh

execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on

set ignorecase
set smartcase

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

noremap <silent> <F4> :let @+=expand("%:p")<CR>
nmap ,cl :let @+=expand("%:p")<CR>
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" let g:syntastic_c_checkers=['splint'] " causes failure


" When modifying files, update them instead of overwriting. Only use this so
" that the crome debugger recognizes files updates
set backupcopy=yes



" Track the engine.
" Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
