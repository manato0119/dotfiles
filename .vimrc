if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/vagrant/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/vagrant/.cache/dein')
  call dein#begin('/home/vagrant/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/vagrant/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " color schema
  call dein#add('morhetz/gruvbox')

  " airline
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  
  " 
  call dein#add('Yggdroot/indentLine')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"



" colorschema
colorscheme gruvbox
set background=dark
set t_Co=256
let g:ligthline = { 'colorscheme': 'gruvbox' }

" Airline
let g:airline_theme='luna'

" tab
if !exists("php_tabnum") | let php_tabnum = 4 | endif
autocmd FileType php,ctp execute "set tabstop=".php_tabnum
autocmd FileType php,ctp execute "set shiftwidth=".php_tabnum

" charset
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" indentLine
let g:indentLine_color_term = 244




"================================================================================
" format
"================================================================================
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" 改行時に前の行のインデントを継続する
set autoindent
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" ファイル内の <Tab> が対応する空白の数
set tabstop=4
" シフト移動幅
set shiftwidth=4
" Tab入力時半角スペースにする
set expandtab
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" 行番号の表示する
set number
" 常にカーソル行を真ん中に
set scrolloff=999
" カレント行をハイライト
set cursorline
" 入力中のコマンドを表示する
set showcmd
" Bs で消せるものを指定する
set backspace=start,eol,indent
" 矩形選択を空白も選択できる
set virtualedit+=block
" swap ファイルを生成しない
set noswapfile
" 補完表示
set wildmenu
" 補完候補を一覧で表示
set wildmode=list:full
" ノーマルモード時にペーストモードを解除する
autocmd InsertLeave * set nopaste
" ターミナル接続を高速にする
set ttyfast
" マクロを実行中は描画を中段する
set lazyredraw
" オンのときは、ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" インクリメンタルサーチ
set incsearch
" 検索時に大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視, 大文字が入ると ignorecase が無効になる
set smartcase
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索する
set wrapscan
" 検索結果のハイライト
set hlsearch
" EscEsc でハイライトを消す
nmap <Esc><Esc> :nohlsearch<CR><Esc>
"================================================================================
" format
"================================================================================


