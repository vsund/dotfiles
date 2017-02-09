call vundle#begin()

" Vundle needs to handle itself
Plugin 'VundleVim/Vundle.vim'

" Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Color schemes
Plugin 'joshdick/onedark.vim'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'mattn/vim-maketable'				" create tables from selection
Plugin 'dhruvasagar/vim-table-mode'			" handle tables
Plugin 'mattn/webapi-vim'					" web api
Plugin 'mattn/gist-vim'						" create gist from within vim
Plugin 'michaeljsmith/vim-indent-object'	" indent as textobject
Plugin 'Raimondi/delimitMate'				" autoclose quotes and brackets
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plugin 'Xuyuanp/nerdtree-git-plugin' | Plugin 'ryanoasis/vim-devicons' 
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'neomake/neomake'
Plugin 'benmills/vimux'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'tpope/vim-sleuth'					" autodetect indent style (tabs vs. spaces)
Plugin 'sickill/vim-pasta'					" context aware pasting
Plugin 'elzr/vim-json'						" JSON support
Plugin 'davidhalter/jedi-vim'				" python autocomplete
Plugin 'junegunn/goyo.vim'					" distraction free writing

" Syntax highlighting
Plugin 'PotatoesMaster/i3-vim-syntax'		" highlighting for i3 config files

" Linter
Plugin 'w0rp/ale'							" syntax checking for some languages

" LaTeX
Plugin 'lervag/vimtex'

call vundle#end()

" vim: set filetype=vim ts=4 sw=4 tw=120 noet :
