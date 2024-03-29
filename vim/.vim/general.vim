" should potentially split this file more logically
let master=$MBRANCH

" Load sensisble early so I can disable autoread
runtime! plugin/sensible.vim
" set noautoread

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
set nofixeol " Don't add standard Unix eol character if it doesn't already exist

" syncs system clipboard with default yank register
" set clipboard=unnamedplus

" scss specific settings to avoid slowdowns
autocmd Filetype scss setlocal norelativenumber nocursorline

"(:help quoteplus), the "+ register corresponds to the 'CLIPBOARD' selection in X11, while the "* register corresponds to the 'PRIMARY' selection
" mouse middle click vs shift+insert
noremap - "+y
noremap _ "+p
vnoremap = "*y
noremap + "*p
nnoremap Z :w!<CR>
nnoremap E :e!<CR>
nnoremap Q :q!<CR>
nnoremap <S-f> <C-f>
" paste without overwriting copy register
nnoremap [ V"0p
nmap <M-a> <Plug>(ale_toggle)
" nmap <M-g> :GBlame<CR> // doesn't work ?
" nnoremap <space>gb :ALEToggle<CR>
" nnoremap <cr> <C-f>
inoremap <M-[> <Esc>
inoremap <M-;> <Esc>
inoremap <M-g> blah
inoremap <M-v> blah
nmap cp :let @" = expand("%:p")<cr>
nmap cf :let @" = expand("%:p")<cr>
nmap , @@
" nnoremap X :wq<CR>
" imap <M-'> <Esc>:w<CR>  -- not working :(
" imap <M-p> <C-p>  -- not working

" not working :(
" execute "set <M-e>=å"
" execute "set <M-e>=^[e"
" nnoremap <M-e> :e!<CR>
" nnoremap å :e!<CR>
" nnoremap <A-e> :e!<CR>

" 'Ex commands' mappings
" FIXME - These map not only at beginning of line
ca gd Gdiff
ca gdm Gdiff $MBRANCH
ca gdmn Gdiff origin/main
ca gdt Git difftool --name-only $MBRANCH
" ca gb Gblame
ca gb Git blame
ca gs Gstatus
"ca gc Gcommit
ca gcc Gcommit
ca gl Gclog
ca gp Gpull

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

" Recognize tsx as typescript
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

" always vertical diff split
set diffopt+=vertical
