" Powerline
" set rtp+=/usr/share/powerline/bindings/vim/
set rtp+=/usr/lib/python2.7/dist-packages/powerline/bindings/vim
" Always show statusline
set laststatus=2

" Use 256 colors
set t_Co=256

" Set highlite color to blue
:hi Search guibg=LightBlue

" Map the F8 key to show highlites of the current word
:nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Set for tmux passthrough of mouse?
set ttymouse=sgr

" Set tab to two spaces
" set tabstop=4                  " Set the visible width of tabs to four spaces
" set softtabstop=0 noexpandtab  " Existing tab display width
" set shiftwidth=4               " Set the shift width (indent) to one tab
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Alt J moves a line or block down, ALT K moves a line or block up
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" For git-gutter
set updatetime=250

" Allow code folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Raimondi/delimitMate'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" For code completion have the following installed: 
" sudo apt-get install python-dev python3-dev
" sudo apt-get install build-essentials cmake
" ./install.py --clang-completer --tern-completer
Plugin 'Valloric/YouCompleteMe'

" Powerline extras to make life awesome!
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Vim-Gitgutter
Bundle 'airblade/vim-gitgutter'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Put plugin specific bindings here

" Syntastic settings for checking with ESLint
" Assumes linting task is NPM file.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Put keybindings here:
map <C-n> :NERDTreeToggle<CR>

" You Complete Me, finds the definition and goes to it. \j
nnoremap <leader>j :YcmCompleter GoToDefinition<CR>

" vim-indent-guides
colorscheme molokai 
set background=dark

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black    ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=darkgrey

autocmd FileType javascript :IndentGuidesEnable

