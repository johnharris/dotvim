"   pathogen - must come first ----------------------------------

execute pathogen#infect()
"  important ---------------------------------------------------
set nocompatible
"  moving around, searching and patterns -----------------------
set incsearch
set showmatch
set smartcase
set ignorecase
"  tags --------------------------------------------------------
"  displaying text ---------------------------------------------
set number
set linebreak
set scrolloff=1
set encoding=utf-8
"  syntax, highlighting and spelling ---------------------------
set hlsearch
set background=dark
"  multilpe windows --------------------------------------------
set hidden
set splitbelow
"  multiple tab pages ------------------------------------------
"  terminal ----------------------------------------------------
"  using the mouse ---------------------------------------------
set mousehide
"  printing ----------------------------------------------------
"  messages and info -------------------------------------------
set showcmd
set ruler
set vb
set laststatus=2
set linespace=2
set ch=2
"   statusline -------------------------------------------------
"set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
"set statusline=%#ErrorMsg#%{GitBranchInfoTokens()[0]}%#StatusLine#

"  selecting text ----------------------------------------------
"  editing text ------------------------------------------------
set nrformats-=octal
set backspace=indent,eol,start
set noswapfile
set undodir=~/.tmp
"  tabs and indenting ------------------------------------------
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shiftround
"   folding ----------------------------------------------------
set foldmethod=marker
set foldmarker={{{,}}}
"   diff mode --------------------------------------------------
"   mapping ----------------------------------------------------
"   reading and writing file -----------------------------------
"   command line editing ---------------------------------------
set wildmenu
set wildmode=full
set undofile
"   executing external commands --------------------------------
"   running make and jumping to errors -------------------------
"   language specific ------------------------------------------
"   various ----------------------------------------------------
set gdefault
"   gui settings -----------------------------------------------
if has("gui")
    set go-=T
    set guifont=Monaco:h13
    set lines=65 columns=250
endif
"   ------------------------------------------------------------
colorscheme kellys

filetype plugin indent on
syntax on
let mapleader=","
"   mappings ---------------------------------------------------
nmap <space> :
imap jj <esc>
imap ww <esc>:w<cr>
imap wq <esc>:wq<cr>
nmap ,d :cd ~/Desktop<cr>:e.<cr>
nmap ,w :cd /Library/WebServer/Documents/<cr>:e.<cr>
nmap ,v :tabedit $MYVIMRC<cr>
"
"   commands ---------------------------------------------------
if has ("autocmd")
	autocmd bufwritepost vimrc source $MYVIMRC
endif
"
"
let g:EasyMotion_leader_key = '<Leader>'

let g:ConqueTerm_EscKey = '<Esc>'
let g:ConqueTerm_PyVersion = 2
nmap my :ConqueTerm mysql -u root -psisyphus
nmap bash :ConqueTerm bash

"show hidden files in NERDTree
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

"used for zen-coding
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

let g:LustyJugglerSuppressRubyWarning = 1
"=========================================
"    FUNCTION KEY MAPPINGS
"=========================================
"----F1 maps to help----------------------
"----F2 to toggle macvim menu bar ----
"set t_Co=256
"   ":colors kellys
"  " :colors mayansmoke
"   syntax enable
"   if has("gui_running")
"     " GUI is running or is about to start.
"     " Maximize gvim window.
"     set lines=999 columns=999
"   else
"     " This is console Vim.
"     if exists("+lines")
"       set lines=50
"     endif
"     if exists("+columns")
"     set columns=100
"     endif
"   endif
"   au GUIEnter * simalt ~x
"   set guioptions-=m
"   set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
			\set guioptions-=T <Bar>
			\set guioptions-=m <bar>
			\else <Bar>
			\set guioptions+=T <Bar>
			\set guioptions+=m <Bar>
			\endif<CR>


"----F3 to toggle NERDTree ----
nnoremap <silent> <F3> :NERDTreeToggle<cr>

"----F4
"nnoremap <silent> <F4> :TlistToggle<cr>
"----F5
"----F6 to toggle colorschemes----
nnoremap <F6> :call ToggleColors()<cr>

function! ToggleColors()
	if (g:colors_name=="kellys")
		:colors mayansmoke
	else
		:colors kellys
	endif
endfunction
"----F7
"----F8
"----F9
"map <F9> :call Parse()<cr>
function! Parse()
	let l:filename = @%
	let l:out = system('/usr/bin/phpcs --standard=zend '.filename)
	cexpr l:out
	copen
endfunction
"----F10 view in firefox ----
"map <F10> :exec ":!open -a firefox ".substitute(expand("%:p"),"/Library/WebServer/Documents","http://localhost","")<cr>
"----F11
"----F12

