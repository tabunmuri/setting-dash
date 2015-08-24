set encoding=utf-8
set fileencodings=utf-8
set nocompatible
set number
set backspace=indent,eol,start

" # tab設定
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
" ---------------------------
" Start Neobundle Settings.
" ---------------------------

set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

" 編集
NeoBundle 'Align'                               " テキスト整形
NeoBundle 'c9s/cascading.vim'                   " メソッドチェーン整形
NeoBundle 'haya14busa/incsearch.vim'            " Vimの検索体験をリッチにする

" (PHP/Perl/Ruby)
NeoBundle 'eregex.vim'                          " 正規表現をRubyライクにする
NeoBundle 'Shougo/neocomplcache.vim'            " 入力補完
"NeoBundle 'The-NERD-Commenter'                 " コメントアウトを簡単にする
NeoBundle 'godlygeek/tabular'                   " テキスト整形
NeoBundle 'alpaca-tc/vim-endwise'               " end補完

" (Ruby/ShellScript/Vim)
NeoBundle 'YankRing.vim'                        " ヤンクの履歴を順に参照可能にする
NeoBundle 'xmledit'                             " 入力補完 (XML/HTML)

" 表示
NeoBundle 'itchyny/lightline.vim'               " ステータスラインの設定
NeoBundle 'The-NERD-tree'                       " ディレクトリ/ファイルのツリー表示
NeoBundle 'nathanaelkane/vim-indent-guides'     " インデントレベル表示
NeoBundle 'kien/ctrlp.vim'                      " ファイル検索その他

" 移動
NeoBundle 'yonchu/accelerated-smooth-scroll'    " スクロールを滑らかにする
NeoBundle 'matchit.zip'                         " 対応括弧への移動
NeoBundle 'smartword'                           " 単語移動をスマートにする

" 実行
NeoBundle 'grep.vim'                            " Vimでgrepを実行
NeoBundle 'thinca/vim-quickrun'                 " Vimでスクリプトを実行
NeoBundle 'thinca/vim-ref'                      " リファレンスを表示
NeoBundle 'hotchpotch/perldoc-vim'              " Perldocを表示
NeoBundle 'Shougo/vimproc', {
\   'build' : {
\     'windows' : 'make -f make_mingw32.mak',
\     'cygwin'  : 'make -f make_cygwin.mak',
\     'mac'     : 'make -f make_mac.mak',
\     'unix'    : 'make -f make_unix.mak',
\   },
\ }                                             " 非同期処理に必要
NeoBundle 'Shougo/vimshell.git'                 " VimでShellScriptを実行

" カラースキーマ
NeoBundle 'nanotech/jellybeans.vim'             " Jellybeans
NeoBundle 'shelling/railscasts.vim'             " RailsCasts
NeoBundle 'w0ng/vim-hybrid'                     " Hybrid

" シンタックス
NeoBundle 'kchmck/vim-coffee-script'            " CoffeeScript
NeoBundle 'haml.zip'                            " Haml/Sass
NeoBundle 'JavaScript-syntax'                   " JavaScript
NeoBundle 'jQuery'                              " jQuery
NeoBundle 'nginx.vim'                           " nginx.conf
NeoBundle 'tpope/vim-markdown'                  " MarkDown
NeoBundle 'joker1007/vim-markdown-quote-syntax' " MarkDown内のコードをハイライト
NeoBundle 'yuroyoro/vim-python'                 " python
NeoBundle 'scrooloose/syntastic'                " シンタックスチェック
NeoBundle 'chase/vim-ansible-yaml'              " yaml シンタックス

" Unite
NeoBundle 'Shougo/unite.vim'                    " 本体
NeoBundle 'ujihisa/unite-colorscheme'           " カラースキーマをバッファに適用
NeoBundle 'h1mesuke/unite-outline'              " アウトラインの検索および表示
NeoBundle 'basyura/unite-rails'                 " Railsプロジェクト用

" Git
NeoBundle 'tpope/vim-fugitive'                  " Vimからgitを使う
NeoBundle 'airblade/vim-gitgutter'              " 編集中に差分を確認する
NeoBundle 'motemen/git-vim'                     " Vimからgitを使う

" Ruby (Rails)
NeoBundle 'vim-scripts/ruby-matchit'            " matchit(対応括弧への移動)のRuby拡張
NeoBundle 'tpope/vim-rails'                     " Railsプロジェクト用
NeoBundle 'vim-ruby/vim-ruby'                   " Rubyのシンタックスハイライト・スマートインデントなど

call neobundle#end()
     
" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

syntax on

au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*  set ft=nginx

"-------------------------
" End Neobundle Settings.
"-------------------------
