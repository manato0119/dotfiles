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
" $BBP1~$9$k3g8L$d%V%l!<%9$rI=<($9$k(B
set showmatch
" $B2~9T;~$KF~NO$5$l$?9T$NKvHx$K9g$o$;$F<!$N9T$N%$%s%G%s%H$rA}8:$9$k(B
set smartindent
" $B2~9T;~$KA0$N9T$N%$%s%G%s%H$r7QB3$9$k(B
set autoindent
" $B9TF,$NM>GrFb$G(B Tab $B$rBG$A9~$`$H!"(B'shiftwidth' $B$N?t$@$1%$%s%G%s%H$9$k(B
set smarttab
" $B%U%!%$%kFb$N(B <Tab> $B$,BP1~$9$k6uGr$N?t(B
set tabstop=4
" $B%7%U%H0\F0I}(B
set shiftwidth=4
" Tab$BF~NO;~H>3Q%9%Z!<%9$K$9$k(B
set expandtab
" $B%+!<%=%k$,2?9TL\$N2?NsL\$KCV$+$l$F$$$k$+$rI=<($9$k(B
set ruler
" $B9THV9f$NI=<($9$k(B
set number
" $B>o$K%+!<%=%k9T$r??$sCf$K(B
set scrolloff=999
" $B%+%l%s%H9T$r%O%$%i%$%H(B
set cursorline
" $BF~NOCf$N%3%^%s%I$rI=<($9$k(B
set showcmd
" Bs $B$G>C$;$k$b$N$r;XDj$9$k(B
set backspace=start,eol,indent
" $B6k7AA*Br$r6uGr$bA*Br$G$-$k(B
set virtualedit+=block
" swap $B%U%!%$%k$r@8@.$7$J$$(B
set noswapfile
" $BJd40I=<((B
set wildmenu
" $BJd408uJd$r0lMw$GI=<((B
set wildmode=list:full
" $B%N!<%^%k%b!<%I;~$K%Z!<%9%H%b!<%I$r2r=|$9$k(B
autocmd InsertLeave * set nopaste
" $B%?!<%_%J%k@\B3$r9bB.$K$9$k(B
set ttyfast
" $B%^%/%m$r<B9TCf$OIA2h$rCfCJ$9$k(B
set lazyredraw
" $B%*%s$N$H$-$O!"%&%#%s%I%&$NI}$h$jD9$$9T$O@^$jJV$5$l!"<!$N9T$KB3$1$FI=<($5$l$k(B
set wrap
" $B%$%s%/%j%a%s%?%k%5!<%A(B
set incsearch
" $B8!:w;~$KBgJ8;z>.J8;z$r6hJL$7$J$$(B
set ignorecase
" $B>.J8;z$G8!:w$9$k$HBgJ8;z$H>.J8;z$rL5;k(B, $BBgJ8;z$,F~$k$H(B ignorecase $B$,L58z$K$J$k(B
set smartcase
" $B8!:w$,%U%!%$%kKvHx$^$G?J$s$@$i!"%U%!%$%k@hF,$+$i:F$S8!:w$9$k(B
set wrapscan
" $B8!:w7k2L$N%O%$%i%$%H(B
set hlsearch
" EscEsc $B$G%O%$%i%$%H$r>C$9(B
nmap <Esc><Esc> :nohlsearch<CR><Esc>
"================================================================================
" format
"================================================================================


