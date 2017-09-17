function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" colorschemes
" Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'

Plug 'editorconfig/editorconfig-vim'

" Notetaking
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

Plug 'Rykka/riv.vim', { 'for': 'rst' }						" reStructuredText

Plug 'ervandew/supertab'									" simple autocomplete
Plug 'tpope/vim-commentary'									" (un)comment
Plug 'tpope/vim-surround'									" handle surroundings
Plug 'tpope/vim-repeat'										" make plugin commands repeatable
Plug 'tpope/vim-dispatch'									" dispatch into tmux panes
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'				" create gist from within vim
Plug 'Raimondi/delimitMate'									" autoclose quotes and brackets
Plug 'tpope/vim-fugitive'									" awesome git plugin
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'ryanoasis/vim-devicons'								" icons
Plug 'ctrlpvim/ctrlp.vim'									" fuzzy file finder
Plug 'neomake/neomake'										" async linting and making
Plug 'benmills/vimux', Cond(!empty($TMUX))						" tmux support
Plug 'sickill/vim-pasta'									" context aware pasting
Plug 'junegunn/goyo.vim'									" distraction free writing
Plug 'bronson/vim-trailing-whitespace'						" highlight unwanted whitespaces

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }			" python autocomplete

" Rust plugins
Plug 'racer-rust/vim-racer', { 'for': 'rust' }				" rust autocomplete
if !empty($TMUX)
	Plug 'jtdowney/vimux-cargo', { 'for': 'rust' }			" run cargo in tmux using vimux
endif

Plug 'sheerun/vim-polyglot'									" syntax support for many languages

function! BuildYCM(info)
	if a:info.status = 'installed' || a:info.force
		!./install.py --clang-completer --racer-completer
	endif
endfunction

if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
endif

if has('vim')
	Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
endif

" Plug 'artur-shaik/vim-javacomplete2'

Plug 'lervag/vimtex'

call plug#end()
" vim: set filetype=vim ts=4 sw=4 tw=120 noet :
