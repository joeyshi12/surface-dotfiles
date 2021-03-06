" Plugins
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" General
set nocompatible
set noundofile
set belloff=all
set backspace=indent,eol,start
set encoding=utf-8
set pastetoggle=<F2>
set linebreak
set number
set synmaxcol=200
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow splitright
set ph=15
set signcolumn=yes
colorscheme nord
"hi Normal guibg=NONE ctermbg=NONE
"highlight LineNr ctermfg=NONE ctermbg=NONE
"highlight! link SignColumn LineNr
"highlight EndOfBuffer ctermfg=NONE ctermbg=NONE

" NERD Tree
let NERDTreeShowHidden=1

" LaTeX (vimtex/snipmate)
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_compiler_latexmk = {
            \ 'build_dir': 'build',
            \ }
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"   

" Mappings
nnoremap gR :%s///gc<left><left><left>
map <C-n> :tabnew<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <F5>  :set spell!<CR>
map <C-\> :NERDTreeToggle<CR>
imap <C-\> <ESC>:NERDTreeToggle<CR>
