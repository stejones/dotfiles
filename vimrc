set nocompatible
filetype off " for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache'
Bundle 'majutsushi/tagbar'
Bundle 'ap/vim-css-color'
" Bundle 'closetag.vim'

Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'Raimondi/delimitMate'
" Bundle 'Valloric/YouCompleteMe'
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview
Bundle 'marijnh/tern_for_vim'

" Bundle 'tomasr/molokai'
colorscheme pablo

" set CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

if has("autocmd")
    filetype plugin indent on     " required for vundle!

    " Put these in an autocmd group, so that we can delete them easily.
    augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    " autocmd FileType text setlocal textwidth=78

    " When editing a file, always jump to the last known cursor position.
      " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
    augroup END

endif " has("autocmd")


" syntax highlighting
"set t_Co=256
syntax on
set history=500
set fileformats=unix
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showmatch
set scrolloff=5
set foldenable
set foldmethod=indent
set foldlevel=100
set backspace=indent,eol,start " easy delete
set linespace=0
set modelines=0 " stops files changing vim setup
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set smartcase                   " case sensitive when uc present
set winminheight=0              " windows can be 0 line high
set ignorecase                  " case insensitive search
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.

set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace"

" better html indenting
let g:html_indent_inctags="head,html,body,p,head,table,tbody,div,script"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"

" set laststatus=2
set showmode

set viminfo='10,\"100,:20,%,n~/.viminfo
" "set encoding=utf-8
let g:Powerline_mode_n = 'NORMAL'
let g:Powerline_symbols = 'unicode'
let g:Powerline_colorscheme = 'solarized256'

nmap \l :setlocal number!<CR>
nmap \p :set paste!<CR>
nmap \q :nohlsearch<CR>
nnoremap <C-L> :nohl<CR> :NERDTreeToggle<CR><C-L>

" nmap <C-l> :nohlsearch<CR>

    " OmniComplete {
        if has("autocmd") && exists("+omnifunc")
            autocmd Filetype *
                \if &omnifunc == "" |
                \setlocal omnifunc=syntaxcomplete#Complete |
                \endif
        endif

        hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
        hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
        hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

        " some convenient mappings
        " inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
        " inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
        " inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
        " inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
        " inoremap <expr> <C-d>      pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
        " inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
        set completeopt=menu,preview,longest

        let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
        " let g:SuperTabDefaultCompletionType = "context"

    " }

" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" setlocal omnifunc=syntaxcomplete#Complete
" let OmniCpp_NamespaceSearch = 1
" let OmniCpp_GlobalScopeSearch = 1
" let OmniCpp_ShowAccess = 1
" let OmniCpp_MayCompleteDot = 1
" let OmniCpp_MayCompleteArrow = 1
" let OmniCpp_MayCompleteScope = 1

" new page ^L
set printoptions=formfeed:y
" no page heading
set pheader=\ 

set undodir=~/.vim/undodir


"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
