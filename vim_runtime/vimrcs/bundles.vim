set nocompatible
filetype off

set rtp+=$HOME/.dotfiles/vim_runtime/bundle/vundle/

call vundle#rc($HOME .  "/.dotfiles/vim_runtime/bundle")

Plugin 'gmarik/vundle'

"-----------------
" Code Completion
"-----------------
"Plugin 'Shougo/neocomplete'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'Shougo/neocomplcache'
"Plugin 'ervandew/supertab'
"Plugin 'mattn/zencoding-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

"-----------------------
" Writing Operation
"-----------------------
Plugin 'Raimondi/delimitMate'
Plugin 'spiiph/vim-space'
Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'sjl/gundo.vim'
Plugin 'panozzaj/vim-autocorrect'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'chrisbra/NrrwRgn'

"--------------
" Code Reading
"--------------
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/greplace.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tsaleh/vim-align'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-scripts/rainbow_csv.vim'
Plugin 'chrisbra/csv.vim'

"-------------
" Other Utils
" ------------
"Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'vim-scripts/bufexplorer.zip'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'rizzatti/dash.vim'
"Plugin 'myusuf3/numbers.vim'
Plugin 'christoomey/vim-run-interactive'
Plugin 'tpope/vim-fugitive'
Plugin 'danro/rename.vim'
Plugin 'pbrisbin/vim-mkdir'
"Plugin 'vim-scripts/TabLineSet.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
Plugin 'davidhalter/jedi-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'derekwyatt/vim-scala'
"Plugin 'vim-scripts/Vim-R-plugin'
"Plugin 'pangloss/vim-javascript'
"Plugin 'rweald/pig.vim'
"Plugin 'vim-scripts/SAS-Syntax'

"--------------
" Color Scheme
"--------------
Plugin 'nanotech/jellybeans.vim'
"Plugin 'rickharris/vim-blackboard'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'rickharris/vim-monokai'
"Plugin 'tpope/vim-vividchalk'
"Plugin 'Lokaltog/vim-distinguished'
"Plugin 'gilesbowkett/ir_black'
"Plugin 'croaky/vim-colors-github'
"Plugin 'tomasr/molokai'

"--------------
" My Own Forks
"--------------
Plugin 'musicx/teradata'
Plugin 'musicx/LargeFile'
Plugin 'musicx/conque'


"vim-scripts repos
"Plugin 'Python-Syntax'

"non github repos
"Plugin 'git://git.wincent.com/command-t.git'

filetype plugin indent on 

" Brief help
" :PluginList            - list configured bundles
" :PluginInstall(!)      - install(update) bundles
" :PluginSearch(!) foo   - search(or refresh cache first) for foo
" :PluginClean(!)        - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed

