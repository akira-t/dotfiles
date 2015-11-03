filetype off
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
  
	NeoBundle 'Shougo/neobundle.vim'
	NeoBundle 'Shougo/vimproc'
	NeoBundle 'Shougo/vimshell'
	NeoBundle 'Shougo/neocomplcache'
	"NeoBundle 'Shougo/neosnippet'
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'scrooloose/syntastic'
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'klen/python-mode'
	NeoBundle 'vim-jp/vimdoc-ja'

	"colorschemes
	NeoBundle 'tomasr/molokai', { "base" : $HOME."/.vim/colors" }
	NeoBundle 'b4b4r07/solarized.vim', { "base" : $HOME."/.vim/colors" }
	call neobundle#end()
endif

"Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"remap
inoremap <C-j> <ESC>
nnoremap <C-j> <ESC>
vnoremap <C-j> <ESC>
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 

filetype plugin indent on
filetype indent on
" appearence
syntax on
colorscheme molokai
set nu
set ts=4
set cursorline
set showmatch
let python_highlight_all = 1
" for mac
if system('uname -a') =~ '^Darwin/'
        "let g:make = 'make'
endif
 
