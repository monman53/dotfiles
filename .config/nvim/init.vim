" show line number
" set number
set number! relativenumber!

" spaces will be used to fill the amount of whitespace of the tab
set expandtab

" number of spaces that a <Tab> in the file counts for
set tabstop=2

" indent width
set shiftwidth=2

" use colors that look good on a dark background
set background=dark

set cursorline

set foldmethod=marker

set clipboard=unnamedplus

set guifont=Source\ Code\ Pro\ 11


inoremap {<Enter> {<Enter>}<ESC><S-o>
inoremap , ,<Space>

" buffer move
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

" format pasted text
nnoremap p ]p

"---------------------------
" plugins
"---------------------------
" plugin manager
" * using vim-plug(https://github.com/junegunn/vim-plug)
" * installation
"       $ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" * usage
"   * add `Plug` line
"   * exec :PlugInstall

call plug#begin()

" Coc is an intellisense engine for Vim/Neovim.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"source ~/.config/nvim/coc.vim

"" Vim plugin for intensely orgasmic commenting
"Plug 'scrooloose/nerdcommenter'

" An extensible & universal comment vim-plugin that also handles embedded filetypes
Plug 'tomtom/tcomment_vim'

"Plug 'SirVer/ultisnips'
"let g:UltiSnipsSnippetDirectoried=["ultisnips"]

" snippets
"Plug 'honza/vim-snippets'

" status tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" theme
Plug 'arcticicestudio/nord-vim'

" git
Plug 'airblade/vim-gitgutter'

call plug#end()


colorscheme nord
let g:airline_powerline_fonts = 1

function! Formatonsave()
  let now_line = line(".")
  let l:formatdiff = 1
  exec ":%! clang-format"
  exec ":" . now_line
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()

