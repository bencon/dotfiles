" call ale#linter#Define('sass', {
" \   'name': 'sasslint',
" \   'executable': 'sass-lint',
" \   'command': 'sass-lint -v -q -f compact %t',
" \   'callback': 'ale#handlers#css#HandleCSSLintFormat',
" \})

" call ale#linter#Define('javascript', {
" \   'name': 'eslint',
" \   'output_stream': 'both',
" \   'executable_callback': 'ale#handlers#eslint#GetExecutable',
" \   'command_callback': 'ale#handlers#eslint#GetCommand',
" \   'callback': 'ale#handlers#eslint#Handle',
" \})

" let g:ale_fixers = {
" \   'javascript': ['eslint'],
" \   'scss': ['sass'],
" \}


"let g:ale_set_loclist = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_quickfix = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" nnoremap <leader>af <Plug>(ale_fix)

" Necessary for JamshedVesuna/vim-markdown-preview
let vim_markdown_preview_github=1

