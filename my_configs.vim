" golang support
filetype off
filetype plugin indent off
" set runtimepath+=~/.vim_runtime/go-vim
filetype plugin indent on
syntax on

" set line number
set number

" highlight cursor
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=233 ctermfg=NONE guibg=purple guibg=NONE
set cursorline
hi CursorColumn cterm=NONE ctermbg=236 ctermfg=NONE guibg=purple guibg=NONE

" display tab and space as some other remarkable characters
set list
set listchars=tab:>.,trail:.

" display code
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

" colorscheme
set background=dark
colorscheme peaksea

" clipboard
set clipboard=unnamed

" YCM
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/sources_non_forked/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_server_log_level = 'debug'

" syntax
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']

" go config for better performance
let g:go_fmt_command = "gofmt"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

" map Tab switch
let g:go_doc_keywordprg_enabled = 0
nnoremap J gT
nnoremap K gt

" vim-template
let g:templates_directory = '~/.vim_runtime/templates'
let g:templates_no_builtin_templates = 0

autocmd BufRead,BufNewFile   *.vue,*.yaml,*.yml set tabstop=2 shiftwidth=2

" YCM for python virtual env
if !empty($VIRTUAL_ENV)
    let g:ycm_python_binary_path = $VIRTUAL_ENV . '/bin/python'
endif
