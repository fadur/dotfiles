"=============================================================================
" vimrc --- Entry file for vim
" Copyright (c) 2016-2020 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

" Note: Skip initialization for vim-tiny or vim-small.
if 1
    let g:_spacevim_if_lua = 0
    if has('lua')
        if has('win16') || has('win32') || has('win64')
            let s:plugin_dir = fnamemodify(expand('<sfile>'), ':h').'\lua'
            let s:str = s:plugin_dir . '\?.lua;' . s:plugin_dir . '\?\init.lua;'
        else
            let s:plugin_dir = fnamemodify(expand('<sfile>'), ':h').'/lua'
            let s:str = s:plugin_dir . '/?.lua;' . s:plugin_dir . '/?/init.lua;'
        endif
        silent! lua package.path=vim.eval("s:str") .. package.path
        if empty(v:errmsg)
            let g:_spacevim_if_lua = 1
        endif
    endif
    execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
endif
" vim:set et sw=2


map <C-W>, :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden = 0

autocmd BufWritePre *.py :%s/\s\+$//e " Remove trailing whitespace on save.

let g:python_host_prog = '/usr/local/bin/python'
let g:python2_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python'

let g:black_linelength = 79 
let g:neoformat_python_black = {
    \ 'exe': 'black',
    \ 'stdin': 1,
    \ 'args': ['-q', '-'],
    \ }
    let g:neoformat_enabled_python = ['black']


