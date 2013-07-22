"  pathogen - must come first ----------------------------------
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
"  syntax, highlighting and spelling ---------------------------
set hlsearch
set background=dark
"  multilpe windows --------------------------------------------
set hidden
"  multiple tab pages ------------------------------------------
"  terminal ----------------------------------------------------
"  using the mouse ---------------------------------------------
"  printing ----------------------------------------------------
"  messages and info -------------------------------------------
set showcmd
set ruler
"  selecting text ----------------------------------------------
"  editing text ------------------------------------------------
set nrformats-=octal
set backspace=indent,eol,start
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
    set guifont=inconsolata:h16
    set lines=65 columns=110
endif
"   ------------------------------------------------------------
colorscheme solarized
filetype plugin indent on
syntax on
let mapleader="/"
"   mappings ---------------------------------------------------
"
"
