"===========================
" neovim Configurations
" monman53
"===========================


"---------------------------
" dein (plugin manager)
"---------------------------
let g:cache_home = expand('$HOME/.cache')
let g:config_home = expand('$HOME/.config')
let s:dein_cache_dir = g:cache_home . '/dein'

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_cache_dir)
    call dein#begin(s:dein_cache_dir)

    let s:toml_dir = g:config_home . '/nvim/dein'

    call dein#load_toml(s:toml_dir . '/common.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/cpp.toml', {'lazy': 0, 'on_ft': ['c', 'cpp']})

    call dein#end()
    call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
    call dein#install()
endif
"End dein Scripts-------------------------



"---------------------------
" General
"---------------------------
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent
set cindent
set expandtab
set foldmethod=marker
set clipboard=unnamedplus
"let loaded_matchparen=1
set number
set relativenumber
set laststatus=2
set list
set sh=bash
" remember cursor position
autocmd BufWritePost * mkview
autocmd BufReadPost * loadview
filetype plugin on



"---------------------------
" Color Scheme
"---------------------------
syntax enable
" colorscheme molokai
set background=dark



"---------------------------
" Syntax Highlight
"---------------------------
set syntax=asciidoc



"---------------------------
" Key Map
"---------------------------
inoremap jj <ESC>

inoremap {<Enter> {<Enter>}<ESC><S-o>

"inoremap '; <ESC>mzA;<ESC>`za      " insert ; in line-end
"inoremap :; <ESC>mzA;<ESC>`za      " insert ; in line-end

inoremap , ,<Space>
" inoremap <C-h> <C-o>h
" inoremap <C-j> <C-o>j
" inoremap <C-k> <C-o>k
" inoremap <C-l> <C-o>l

nnoremap <silent><C-e> :NERDTreeToggle<CR>

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

nnoremap p ]p
nnoremap P ]P

tnoremap <silent> <ESC> <C-\><C-n>
